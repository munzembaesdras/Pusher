const express = require("express");
const mysql = require("mysql2/promise");
const axios = require("axios");
const cron = require("node-cron");
const { dbConfig } = require("../config");
const user = require("../module/user");
const role_user = require("../module/role_user");
const ticket = require("../module/ticket");
const moment = require("moment");
const bodyParser = require("body-parser");
const logger = require("../log");
const app = express();
const PORT = 3007;
let sentData = [];
const annonce = require("../module/annonce");

app.use(bodyParser.json({ limit: "100mb" }));

const getDbConnection = async () => {
  const connection = await mysql.createConnection(dbConfig);
  return connection;
};

// RECUPERATION ET TRAITEMENT DES DONNÉES RECU PAR LE CLIENT
app.post("/Pusher/sync", async (req, res) => {
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
        await ticket(records, connection);
      }
      logger.info(`Données de la table ${table} traitées avec succès.`);
    } catch (error) {
      logger.error(
        `Erreur de traitement de donnée de la table ${table}:`,
        error
      );
    } finally {
      await connection.end();
      logger.info(`Connexion à la base de données fermée.`);
    }
  }
  logger.info("Données du client traitées avec succès");
  res.sendStatus(200);
});

const syncDataToClients = async () => {
  let connection;
  try {
    connection = await getDbConnection();

    // Récupération des données des tables
    const [agences] = await connection.query("SELECT * FROM tb_agence");
    const [role] = await connection.query(
      "SELECT r.role_nom, r.role_status, p.partenairenom FROM tb_role r JOIN tb_partenaire p ON r.partenaire_id = p.partenaireid;"
    );
    const [users] = await connection.query("SELECT * FROM tb_users");
    const [annonces] = await connection.query("SELECT * FROM tb_bande_annonce");

    users.forEach((user) => {
      user.creation_date = moment(user.creation_date).format(
        "YYYY-MM-DD HH:mm:ss"
      );
    });
    const [role_user] = await connection.query(
      "SELECT u.user_login, r.role_nom FROM tb_role_user ru JOIN tb_users u ON ru.user_id=u.user_id JOIN tb_role r ON ru.role_id=r.role_id"
    );
    const [videos_agence] = await connection.query(
      "SELECT va.agence_id, a.agence_ip, v.* FROM tb_video_agence va JOIN tb_agence a ON a.agence_id = va.agence_id JOIN tb_video v ON v.video_id = va.video_id"
    );
    videos_agence.forEach((video) => {
      video.video_create_date = moment(video.video_create_date).format(
        "YYYY-MM-DD HH:mm:ss"
      );
      video.video_modify_date = moment(video.video_modify_date).format(
        "YYYY-MM-DD HH:mm:ss"
      );
    });
    const [services_agence] = await connection.query(
      "SELECT sa.agence_id, a.agence_ip, s.* FROM tb_service_agence sa JOIN tb_agence a ON a.agence_id = sa.agence_id JOIN tb_service s ON s.service_id = sa.service_id"
    );
    services_agence.forEach((service) => {
      service.service_create_date = moment(service.service_create_date).format(
        "YYYY-MM-DD HH:mm:ss"
      );
    });

    // Récupération des adresses IP des clients
    const getClientIps = async () => {
      let connection;
      try {
        connection = await getDbConnection();
        const [rows] = await connection.query(
          "SELECT agence_ip FROM tb_agence"
        );
        return rows.map((row) => row.agence_ip);
      } catch (error) {
        logger.error("Erreur de récupération des IPs des clients:", error);
        throw error;
      } finally {
        if (connection) await connection.end();
      }
    };
    const clientIps = await getClientIps();

    // Envoi des données aux clients et stockage des données envoyées
    sentData = [];
    const promises = clientIps.map(async (clientIp) => {
      try {
        const filteredServices = services_agence.filter(
          (sa) => sa.agence_ip === clientIp
        );
        const filteredVideos = videos_agence.filter(
          (va) => va.agence_ip === clientIp
        );

        const tables = [
          { table: "tb_agence", records: agences },
          { table: "tb_bande_annonce", records: annonces },
          { table: "tb_service", records: filteredServices },
          { table: "tb_role", records: role },
          { table: "tb_users", records: users },
          { table: "tb_role_user", records: role_user },
          { table: "tb_video", records: filteredVideos },
        ];

        const Data = {
          agence_nom: "", // Remplir cette valeur selon tes besoins
          data: tables,
        };

        sentData.push(Data);

        // await axios.post(`http://${clientIp}:3006/Pusher/sync`, Data);
      } catch (error) {
        logger.error(`Erreur d'envoi de données au client ${clientIp}:`, error);
      }
    });

    await Promise.all(promises);

    logger.info("Données envoyées aux clients avec succès.");
  } catch (error) {
    logger.error("Erreur d'envoi de données aux clients:", error);
  } finally {
    if (connection) await connection.end();
  }
};

app.get("/Pusher/sync", (req, res) => {
  try {
    syncDataToClients();
    if (sentData.length === 0) {
      res
        .status(404)
        .json({ message: "No data has been sent to clients yet." });
    } else {
      res.json(sentData);
    }
  } catch (error) {
    res.sendStatus(500);
    logger.error("Erreur de récupération des données:", error);
    console.error("Error fetching data:", error);
  }
});

// LANCEMENT DU SERVEUR
app.listen(PORT, () => {
  logger.info(`Le serveur s'exécute sur le port ${PORT}`);
  syncDataToClients();

  // Synchronize data to clients every 40 minutes
  cron.schedule("*/30 8-17 * * 1-6", () => {
    syncDataToClients();
  });
});
