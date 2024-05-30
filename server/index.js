const express = require("express");
const mysql = require("mysql2/promise");
const axios = require("axios");
const cron = require("node-cron");
const dbConfig = require("../config");
const user = require("./user");
const role_user = require("./role_user");
const moment = require("moment");

const ticket = require("./ticket");
const role = require("../client/role");
const app = express();
const PORT = 3005;

const getDbConnection = async () => {
  const connection = await mysql.createConnection(dbConfig);
  return connection;
};

const getClientIps = async () => {
  const connection = await getDbConnection();
  const [rows] = await connection.query("SELECT agence_ip FROM tb_agence ");
  await connection.end();
  return rows.map((row) => row.agence_ip);
};

const getAgencyIdByName = async (name) => {
  const connection = await getDbConnection();
  const [rows] = await connection.query(
    "SELECT agence_key FROM tb_agence WHERE agence_nom = ?",
    [name]
  );
  await connection.end();
  return rows.length > 0 ? rows[0].id : null;
};

app.use(express.json());

app.post("/sync", async (req, res) => {
  const { data } = req.body;
  for (const colonne of data) {
    const { table, records } = colonne;
    const connection = await getDbConnection();
    if (table === "tb_users") {
      user(records, connection);
    } else if (table === "tb_role_user") {
      role_user(records, connection);
    } else if (table === "tb_ticket") {
      ticket(records, connection);
    } 
  }

  res.sendStatus(200);
});

const syncDataToClients = async () => {
  try {
    const connection = await getDbConnection();

    const [agencies] = await connection.query("SELECT * FROM tb_agence");
    const [services] = await connection.query("SELECT * FROM tb_service");
    const [role] = await connection.query(
      "SELECT  r.role_nom, r.role_status, p.partenairenom FROM tb_role r join tb_partenaire p on r.partenaire_id = p.partenaireid ;"
    );
    const [tickets] = await connection.query("SELECT * FROM tb_ticket");
    const [users] = await connection.query("SELECT * FROM tb_users");
    users.forEach((user) => {
      user.creation_date = moment(user.creation_date).format(
        "YYYY-MM-DD HH:mm:ss"
      );
    });
    const [role_user] = await connection.query(
      "SELECT u.user_login, r.role_nom  FROM tb_role_user ru JOIN tb_users u ON ru.user_id=u.user_id JOIN tb_role r ON ru.role_id=r.role_id"
    );

    const tables = [
      { table: "tb_agence", records: agencies },
      { table: "tb_service", records: services },
      { table: "tb_role", records: role },
      { table: "tb_users", records: users },
      { table: "tb_role_user", records: role_user },
      { table: "tickets", records: tickets },
    ];
    const Data = {
      agence_nom: "",
      data: tables,
    };
    const clientIps = await getClientIps();

    for (const clientIp of clientIps) {
      for (const table of tables) {
        await axios.post(`http://${clientIp}:3005/sync`, Data);
      }
    }
/*     console.log(JSON.stringify(Data));
 */    await connection.end();
    console.log("Data sent to clients successfully");
  } catch (error) {
    console.error("Error sending data to clients:", error);
  }
};

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
  syncDataToClients();

  // Synchronize data to clients every 40 minutes
  //cron.schedule("*/40 * * * *", syncDataToClients);
});
