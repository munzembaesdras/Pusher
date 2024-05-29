const express = require("express");
const mysql = require("mysql2/promise");
const axios = require("axios");
const cron = require("node-cron");
const dbConfig = require("../config");
const service = require("./service");
const user = require("./user");
const partenaire = require("./partenaire");
const role = require("./role");
const role_user = require("./role_user");
const moment = require("moment");
const app = express();
const PORT = 3005;

const getDbConnection = async () => {
  const connection = await mysql.createConnection(dbConfig);
  return connection;
};

const getServerIps = async () => {
  const connection = await getDbConnection();
  const [rows] = await connection.query(
    "SELECT url_master FROM tb_config_system "
  );
  await connection.end();
  console.log(rows.map((row) => row.url_master));
  return rows.map((row) => row.url_master);
};

const getAgencyIdByName = async (name) => {
  const connection = await getDbConnection();
  const [rows] = await connection.query(
    "SELECT agence_key FROM tb_agence WHERE agence_nom = ?",
    [name]
  );

  await connection.end();
  return rows.map((row) => row.agence_key);
};

app.use(express.json());

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
      console.error("Error processing data:", error);
    } finally {
      await connection.end();
    }
  }

  res.sendStatus(200);
});

const syncDataToClients = async () => {
  try {
    const connection = await getDbConnection();

    const [services] = await connection.query("SELECT * FROM tb_service");
    const [agencies] = await connection.query("SELECT * FROM tb_agence");
    const [tickets] = await connection.query("SELECT * FROM tb_ticket");
    const [users] = await connection.query("SELECT * FROM tb_users");
    // Format the date fields in users
    users.forEach((user) => {
      user.creation_date = moment(user.creation_date).format(
        "YYYY-MM-DD HH:mm:ss"
      );
      console.log(user.creation_date);
    });

    const [role_user] = await connection.query(
      "SELECT u.user_login, r.role_nom  FROM tb_role_user ru JOIN tb_users u ON ru.user_id=u.user_id JOIN tb_role r ON ru.role_id=r.role_id"
    );

    const tables = [
      { table: "tb_users", records: users },
      { table: "tb_ticket", records: tickets },
      { table: "tb_agence", records: agencies },
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
    console.log(JSON.stringify(Data));
    await connection.end();
    console.log("Data sent to server successfully");
  } catch (error) {
    console.error("Error sending data to server:", error);
  }
};

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
  syncDataToClients();
  // Synchronize data to clients every 40 minutes
  cron.schedule("*/0.3 * * * *", syncDataToClients);
});
