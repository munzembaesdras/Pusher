const express = require("express");
const mysql = require("mysql2/promise");
const axios = require("axios");
const cron = require("node-cron");
const dbConfig = require("../config");
const service = require("./service");
const user = require("./user");
const partenaire = require("./partenaire");
const role = require("./role");
const role_user = require("../server/role_user");
const moment = require("moment");
const bodyParser = require('body-parser');
const logger = require('../log');

const app = express();
const PORT = 3005;

app.use(bodyParser.json({ limit: '100mb' }));

const getDbConnection = async () => {
    const connection = await mysql.createConnection(dbConfig);
    return connection;
};

const getServerIps = async () => {
    let connection;
    try {
        connection = await getDbConnection();
        const [rows] = await connection.query("SELECT url_master FROM tb_config_system");
        return rows.map((row) => row.url_master);
    } catch (error) {
        logger.error('Erreur de récupération des IPs des serveurs:', error);
        throw error;
    } finally {
        if (connection) await connection.end();
    }
};

const getAgencyIdByName = async (name) => {
    let connection;
    try {
        connection = await getDbConnection();
        const [rows] = await connection.query("SELECT agence_key FROM tb_agence WHERE agence_nom = ?", [name]);
        return rows.map((row) => row.agence_key);
    } catch (error) {
        logger.error('Erreur de récupération des IDs des agences par nom:', error);
        throw error;
    } finally {
        if (connection) await connection.end();
    }
};

app.post("/sync", async (req, res) => {
    const { data } = req.body;
    for (const colonne of data) {
        console.log(colonne);
        const { table, records } = colonne;
        const connection = await getDbConnection();
        try {
            if (table === "tb_service") {
                await service(records, connection);
            } else if (table === "tb_partenaire") {
                await partenaire(records, connection);
            } else if (table === "tb_users") {
                await user(records, connection);
            } else if (table === "tb_role") {
                await role(records, connection);
            } else if (table === "tb_role_user") {
                await role_user(records, connection);
            }
        } catch (error) {
            logger.error("Erreur de traitement des données:", error);
            console.error("Error processing data:", error);
        } finally {
            await connection.end();
        }
    }

    res.sendStatus(200);
});
app.get("/sync", async (req, res) => {

    res.sendStatus(200);
});

const syncDataToClients = async () => {
    let connection;
    try {
        connection = await getDbConnection();

        const [services] = await connection.query("SELECT * FROM tb_service");
        const [agencies] = await connection.query("SELECT * FROM tb_agence");
        const [tickets] = await connection.query("SELECT * FROM tb_ticket WHERE ticket_date >= NOW() - INTERVAL 3 DAY;");
        const [users] = await connection.query("SELECT * FROM tb_users");
        // Format the date fields in users
        users.forEach((user) => {
            user.creation_date = moment(user.creation_date).format("YYYY-MM-DD HH:mm:ss");
        });
        console.log(tickets);

        const [role_user] = await connection.query(
            "SELECT u.user_login, r.role_nom FROM tb_role_user ru JOIN tb_users u ON ru.user_id=u.user_id JOIN tb_role r ON ru.role_id=r.role_id"
        );

        const tables = [
            { table: "tb_users", records: users },
            { table: "tb_ticket", records: tickets },
            { table: "tb_role_user", records: role_user },
        ];
        const Data = {
            data: tables,
        };
        const serverIps = await getServerIps();

        for (const serverIp of serverIps) {
            for (const table of tables) {
                await axios.post(`http://${serverIp}:3005/sync`, Data);
            }
        }

        await connection.end();
        console.log("Data sent to server successfully");
    } catch (error) {
        logger.error("Erreur d'envoi des données aux serveurs:", error);
        console.error("Error sending data to server:", error);
    } finally {
        if (connection) await connection.end();
    }
};

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
    syncDataToClients();
    // Synchronize data to clients every 40 minutes
    cron.schedule("*/0.3 * * * *", syncDataToClients);
});
