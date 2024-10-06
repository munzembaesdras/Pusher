const express = require("express");
const mysql = require("mysql2/promise");
const axios = require("axios");
const cron = require("node-cron");
const { dbConfig, dbConfigClientTemplate } = require("../config");
//const service = require("./service");
const user = require("../server/user");
const partenaire = require("./partenaire");
const role = require("./role");
const role_user = require("../server/role_user");
const moment = require("moment");
const bodyParser = require("body-parser");
const logger = require("../log");
const video = require("./video");
const winston = require("winston");

const app = express();
const PORT = 3009;
const wehereTciket =
  "SELECT * FROM tb_ticket WHERE ticket_date2 BETWEEN '2024-10-02' AND '2024-10-02'";
let JSONs;
app.use(bodyParser.json({ limit: "100mb" }));
const { readInaccessibleAgenciesLog } = require("./readInaccessibleAgencies");

const inaccessibleLogger = winston.createLogger({
  format: winston.format.combine(
    winston.format.timestamp(),
    winston.format.json() // Conserve le format JSON
  ),
  transports: [
    new winston.transports.File({
      filename: "logs/inaccessible-agencies.log",
      level: "error",
      maxsize: 1024 * 1024 * 10, // 10 MB max
      maxFiles: 5, // garder seulement 5 fichiers de log
    }),
  ],
});

// Route pour recevoir les données des clients

// RECUPERATION DES DONNEES DE LA BASE DE DONNEES CENTRALE */

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
      "SELECT t.agence_ip, t.agence_nom FROM tb_agence t JOIN tb_region_agence ra ON ra.agence_id=t.agence_id JOIN tb_region r ON r.region_id=ra.region_id WHERE r.region_nom='SUD';" // Récupérer les adresses des bases de données des agences
    );
    return agencies.map((agency) => ({
      host: agency.agence_ip,
      ...dbConfigClientTemplate, // Les infos utilisateur et mot de passe restent les mêmes
    }));
  } catch (error) {
    logger.error(
      "Erreur de récupération des configurations des bases de données des agences:",
      error
    );
    throw error;
  } finally {
    if (connection) await connection.end();
  }
};

const syncDataFromAgencies = async (contrainte) => {
  try {
    const clientDbConfigs = await getClientDbConfigs();

    for (const clientConfig of clientDbConfigs) {
      let connection;
      try {
        connection = await getDbConnection(clientConfig);
        logger.info(
          `Connexion à la base de données de l'agence ${clientConfig.host} établie.`
        );

        // Vérifier si la contrainte est définie et est une chaîne non vide
        if (typeof contrainte === "string" && contrainte.trim().length > 0) {
          logger.info(
            `Exécution de la requête avec la contrainte: ${contrainte}`
          );

          // Récupérer les données en utilisant la contrainte
          const [tickets] = await connection.query(
            "SELECT * FROM tb_ticket WHERE ticket_date2 BETWEEN '2024-10-02' AND '2024-10-02'"
          );

          // Récupération des utilisateurs associés aux tickets récents
          const [users] = await connection.query(`SELECT u.* FROM tb_ticket t 
			JOIN tb_users u ON t.ticket_user_login = u.user_login 
			WHERE t.ticket_date2 BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 WEEK) AND CURDATE() 
			GROUP BY u.user_login ORDER BY u.user_login ASC;`);

          // Formater les dates des utilisateurs
          users.forEach((user) => {
            user.creation_date = moment(user.creation_date).format(
              "YYYY-MM-DD HH:mm:ss"
            );
          });

          // Récupération des rôles des utilisateurs
          const [role_user] = await connection.query(`
            SELECT u.user_login, r.role_nom FROM tb_role_user ru 
			JOIN tb_users u ON ru.user_id = u.user_id 
			JOIN tb_role r ON ru.role_id = r.role_id 
			JOIN tb_ticket t ON t.ticket_user_id = u.user_id  WHERE t.ticket_date2 >= NOW() - INTERVAL 4 DAY  
			GROUP BY u.user_id ASC;`);

          // Préparer les données à envoyer
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

          // Traiter les données récupérées
          await processAgencyData(tables, clientConfig.host, Data);
        } else {
          logger.error(
            `La contrainte est indéfinie ou invalide pour l'agence ${clientConfig.host}`
          );
        }
      } catch (error) {
        inaccessibleLogger.error("Agence inaccessible", {
          agence: clientConfig.host,
          date_inaccessible: moment().format("YYYY-MM-DD HH:mm:ss"),
        });
        logger.error(
          `Erreur lors de la connexion ou de la requête pour l'agence ${clientConfig.host}:`,
          error
        );
      } finally {
        if (connection) {
          await connection.end();
          logger.info(
            `Connexion à la base de données de l'agence ${clientConfig.host} fermée.`
          );
        }
      }
    }
  } catch (error) {
    logger.error(
      "Erreur lors de la synchronisation des données des agences:",
      error
    );
  }
};

// TRAITEMENT DES DONNEES RECUPEREES
const processAgencyData = async (tables, agencyHost, Data) => {
  try {
    // Envoyer les données au serveur distant
    await axios.post(`http://localhost:3007/Pusher/sync`, Data);
    logger.info(
      `Données envoyées au serveur localhost pour l'agence ${agencyHost}.`
    );
  } catch (error) {
    logger.error(
      `Erreur lors de l'envoi des données pour l'agence ${agencyHost}:`,
      error
    );
  }
};

// Route pour déclencher la synchronisation manuellement
app.get("/Pusher/sync", async (req, res) => {
  try {
    await syncDataFromAgencies(
      "SELECT * FROM tb_ticket WHERE YEAR(ticket_date2) = YEAR(CURDATE());"
    );
    res.sendStatus(200);
    logger.info("Synchronisation des données des agences réussie.");
  } catch (error) {
    res.sendStatus(500);
    logger.error(
      "Erreur lors de la synchronisation des données des agences:",
      error
    );
  }
});

app.listen(PORT, () => {
  logger.info(`Le serveur s'exécute sur le port ${PORT}`);
  syncDataFromAgencies(wehereTciket);
  // Synchronize data every 40 minutes between 8 AM and 5 PM from Monday to Saturday
  cron.schedule("*/60 9,12,15,17,18 * * 1-6", () => {
    syncDataFromAgencies(
      "SELECT * FROM tb_ticket WHERE ticket_date2 BETWEEN '2024-10-02' AND '2024-10-02'"
    );
  });
  // Exécuter le script chaque 28 du mois à 23h00
  cron.schedule("0 23 28 * *", () => {
    logger.info(
      "Exécution de la lecture du fichier de log des agences inaccessibles."
    );
    readInaccessibleAgenciesLog();
  });
});
