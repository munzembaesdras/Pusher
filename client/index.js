const express = require("express");
const mysql = require("mysql2/promise");
const axios = require("axios");
const cron = require("node-cron");
const {  dbConfig, dbConfigClientTemplate } = require("../config");
const service = require("./service");
const user = require("../server/user");
const partenaire = require("./partenaire");
const role = require("./role");
const role_user = require("../server/role_user");
const moment = require("moment");
const bodyParser = require("body-parser");
const logger = require("../log");
const video = require('./video');

const app = express();
const PORT = 3006;
const wehereTciket = "SELECT * FROM tb_ticket WHERE ticket_date2 >= NOW() - INTERVAL 3 DAY";
let JSONs;
app.use(bodyParser.json({ limit: "100mb" }));

// Route pour recevoir les données des clients
app.post("/Pusher/sync", async (req, res) => {
  const { data } = req.body;
  logger.info("Données reçues du client:", data);

  const clientDbConfigs = await getClientDbConfigs();

  for (const clientConfig of clientDbConfigs) {
    let connection;
    try {
      // Connexion à la base de données du client
      connection = await getDbConnection(clientConfig);

      for (const colonne of data) {
        const { table, records } = colonne;
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
          } else if (table === "tb_video") {
            await video(records, connection);
          }
          logger.info(`Données de la table ${table} traitées avec succès pour l'agence ${clientConfig.host}.`);
        } catch (error) {
          logger.error(`Erreur de traitement de donnée de la table ${table} pour l'agence ${clientConfig.host}:`, error);
        }
      }

    } catch (error) {
      logger.error(`Erreur de connexion à la base de données de l'agence ${clientConfig.host}:`, error);
    } finally {
      if (connection) {
        await connection.end();
        logger.info(`Connexion à la base de données de l'agence ${clientConfig.host} fermée.`);
      }
    }
  }

  logger.info("Données du server traitées avec succès pour tous les clients.");
  res.sendStatus(200);
});

// RECUPERATION DES DONNEES DE LA BASE DE DONNEES CENTRALE
const getDbConnection = async (config) => {
  const connection = await mysql.createConnection(config);
  return connection;
};
// RECUPERATION DES DONNEES DE LA BASE DE DONNEES CLIENT
const getClientDbConfigs = async () => {
  let connection;
  try {
    connection = await getDbConnection(dbConfig); // Connexion au serveur central
    const [agencies] = await connection.query(
      "SELECT agence_ip, agence_nom FROM tb_agence" // Récupérer les adresses des bases de données des agences
    );
    return agencies.map((agency) => ({
      host: agency.agence_ip,
      ...dbConfigClientTemplate, // Les infos utilisateur et mot de passe restent les mêmes
    }));
  } catch (error) {
    logger.error("Erreur de récupération des configurations des bases de données des agences:", error);
    throw error;
  } finally {
    if (connection) await connection.end();
  }
};

// SYNCHRONISATION DES DONNEES DES AGENCES
const syncDataFromAgencies = async (contrainte) => {
  try {
    const clientDbConfigs = await getClientDbConfigs();

    for (const clientConfig of clientDbConfigs) {
      let connection;
      try {
        connection = await getDbConnection(clientConfig);

        // Récupérer les données depuis la base de données de l'agence
        const [tickets] = await connection.query(contrainte);
        const [users] = await connection.query("SELECT * FROM tb_users");

        // Format the date fields in users
        users.forEach((user) => {
          user.creation_date = moment(user.creation_date).format("YYYY-MM-DD HH:mm:ss");
        });

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
        JSONs = { Data };
        logger.info("Données à envoyer aux serveurs:", JSONs);

        // Exécuter le traitement des données ou les envoyer ailleurs
        await processAgencyData(tables, clientConfig.host, Data);
        
      } catch (error) {
        logger.error(`Erreur lors de la connexion à la base de données de l'agence ${clientConfig.host}:`, error);
      } finally {
        if (connection) {
          await connection.end();
        }
      }
    }
  } catch (error) {
    logger.error("Erreur lors de la synchronisation des données des agences:", error);
  }
};

// TRAITEMENT DES DONNEES RECUPEREES
const processAgencyData = async (tables, agencyHost, Data) => {
  // Ici, tu peux implémenter le code pour traiter les données récupérées
  // ou les envoyer à un autre serveur via axios par exemple

      await axios.post(`http://localhost:3005/Pusher/sync`, Data);
      logger.info(
        `Données envoyées au serveur localhost pour la table $.`
      );
  logger.info(`Données récupérées et envoyée pour l'agence ${agencyHost}`);
};

// Route pour déclencher la synchronisation manuellement
app.get("/Pusher/sync", async (req, res) => {
  try {
    await syncDataFromAgencies("SELECT * FROM tb_ticket WHERE YEAR(ticket_date2) = YEAR(CURDATE());");
    res.sendStatus(200);
    logger.info("Synchronisation des données des agences réussie.");
  } catch (error) {
    res.sendStatus(500);
    logger.error("Erreur lors de la synchronisation des données des agences:", error);
  }
});

app.listen(PORT, () => {
  logger.info(`Le serveur s'exécute sur le port ${PORT}`);
  syncDataFromAgencies(wehereTciket);
  // Synchronize data every 40 minutes between 8 AM and 5 PM from Monday to Saturday
  cron.schedule("*/40 8-17 * * 1-6", syncDataFromAgencies);
});
