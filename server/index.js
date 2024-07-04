const express = require("express");
const mysql = require("mysql2/promise");
const axios = require("axios");
const cron = require("node-cron");
const dbConfig = require("../config");
const user = require("./user");
const role_user = require("../client/role_user");
const ticket = require("./ticket");
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

// RECUPERATION ET TRAITEMENT DES DONNÉES RECU PAR LE CLIENT
app.post("/sync", async (req, res) => {
    const { data } = req.body;
    for (const colonne of data) {
        const { table, records } = colonne;
        const connection = await getDbConnection();
        try {
            if (table === "tb_users") {
                await user(records, connection);
            } else if (table === "tb_role_user") {
                await role_user(records, connection);
            } else if (table === "tb_ticket") {
                console.log("ticket");
                console.log(records);
                logger.info('Données de traitement des tickets:', records); // Enregistrement des données de traitement des tickets
                await ticket(records, connection);
            }
        } catch (error) {
            logger.error('Données de traitement des erreurs:', error);
            console.error("Données de traitement des erreurs:", error);
        } finally {
            await connection.end();
        }
    }
    logger.info('Données traitées avec succès');
    res.sendStatus(200);
});

const syncDataToClients = async () => {
    let connection;
    try {
        connection = await getDbConnection();

        // RECUPERATION DES DONNÉES DES TABLES
        const [agences] = await connection.query("SELECT * FROM tb_agence");


        const [role] = await connection.query(
            "SELECT r.role_nom, r.role_status, p.partenairenom FROM tb_role r JOIN tb_partenaire p ON r.partenaire_id = p.partenaireid;"
        );
        const [users] = await connection.query("SELECT * FROM tb_users");
        users.forEach((user) => {
            user.creation_date = moment(user.creation_date).format(
                "YYYY-MM-DD HH:mm:ss"
            );
        });
        const [role_user] = await connection.query(
            "SELECT u.user_login, r.role_nom FROM tb_role_user ru JOIN tb_users u ON ru.user_id=u.user_id JOIN tb_role r ON ru.role_id=r.role_id"
        );
        const [services_agence] = await connection.query(`
            SELECT sa.agence_id, a.agence_ip, s.* 
            FROM tb_service_agence sa 
            JOIN tb_agence a ON a.agence_id = sa.agence_id 
            JOIN tb_service s ON s.service_id = sa.service_id
        `);
        services_agence.forEach((service) => {
            service.service_create_date = moment(service.service_create_date).format(
                "YYYY-MM-DD HH:mm:ss"
            );
            
        });

        // RECUPERATION DES ADRESSES IP DES CLIENTS
        const getClientIps = async () => {
            let connection;
            try {
                connection = await getDbConnection();
                const [rows] = await connection.query("SELECT agence_ip FROM tb_agence");
                return rows.map((row) => row.agence_ip);
            } catch (error) {
                logger.error('Erreur de récupération des IPs des clients:', error);
                throw error;
            } finally {
                if (connection) await connection.end();
            }
        };
        const clientIps = await getClientIps();

        // ENVOI DES DONNÉES AUX CLIENTS
        for (const clientIp of clientIps) {
            try {
                const filteredServices = services_agence.filter(sa => sa.agence_ip === clientIp);
                console.log(filteredServices)
                const tables = [
                    { table: "tb_agence", records: agences },
                    { table: "tb_service", records: filteredServices },
                    { table: "tb_role", records: role },
                    { table: "tb_users", records: users },
                    { table: "tb_role_user", records: role_user },
                ];

                const Data = {
                    agence_nom: "",  // Remplissez cette valeur selon vos besoins
                    data: tables,
                };
                console.log(filteredServices)

                await axios.post(`http://${clientIp}:3005/sync`, Data);
            } catch (error) {
                logger.error(`Erreur d'envoi de données au client ${clientIp}:`, error);
            }
        }


        // Enregistrer les données envoyées dans un fichier JSON
        logger.info(`Données envoyées aux clients avec succès:`);
    } catch (error) {
        console.log("finally");

        logger.error('Erreur d\'envoi de données aux clients:', error);
    } finally {

        console.log("finally");
        if (connection) await connection.end();
    }
};

// LANCEMENT DU SERVEUR
app.listen(PORT, () => {
    console.log(`Le serveur s'exécute sur le port ${PORT}`);
    logger.info(`Le serveur s'exécute sur le port ${PORT}`);
    syncDataToClients();

    // Synchronize data to clients every 40 minutes
    cron.schedule("*/0.1 * * * *", syncDataToClients);
});
