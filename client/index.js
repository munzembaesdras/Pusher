const express = require("express");
const mysql = require("mysql2/promise");
const axios = require("axios");
const cron = require("node-cron");
const { dbConfig, dbConfigClientTemplate } = require("../config");
const user = require("../module/user");
const partenaire = require("../module/partenaire");
const role = require("../module/role");
const role_user = require("../module/role_user");
const moment = require("moment");
const bodyParser = require("body-parser");
const logger = require("../log");
const video = require("../module/video");
const PQueue = require("@esm2cjs/p-queue").default; // Importation de PQueue
const app = express();
const PORT = 3008;
const wehereTciket =
  "SELECT * FROM tb_ticket WHERE ticket_date2 >= NOW() - INTERVAL 1 DAY";

app.use(bodyParser.json({ limit: "100mb" }));

const queue = new PQueue({ concurrency: 5 }); // Limite à 5 connexions en parallèle

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
    const getClientConnections = async () => {
      try {
        const [clients] = await connection.query(
          "SELECT agence_ip, agence_db_name FROM tb_agence"
        );
        return clients;
      } catch (error) {
        logger.error("Erreur de récupération des clients:", error);
        throw error;
      }
    };

    const clients = await getClientConnections();

    // Envoi des données aux bases de données des clients
    for (const client of clients) {
      const clientDbConnection = await getDbConnectionForClient(
        client.agence_ip,
        client.agence_db_name
      );

      try {
        const filteredServices = services_agence.filter(
          (sa) => sa.agence_ip === client.agence_ip
        );
        const filteredVideos = videos_agence.filter(
          (va) => va.agence_ip === client.agence_ip
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

        // Insertion des données dans chaque table de la base du client
        await insertDataToClients(tables, clientDbConnection);

        logger.info(
          `Données envoyées et insérées pour le client ${client.agence_ip} avec succès.`
        );
      } catch (error) {
        logger.error(
          `Erreur d'insertion de données pour le client ${client.agence_ip}:`,
          error
        );
      } finally {
        if (clientDbConnection) await clientDbConnection.end();
      }
    }
  } catch (error) {
    logger.error(
      "Erreur lors de la synchronisation des données avec les clients:",
      error
    );
  } finally {
    if (connection) await connection.end();
  }
};

async function insertDataToClients(data, connection) {
  for (const colonne of data) {
    const { table, records } = colonne;

    try {
      switch (table) {
        case "tb_service":
          await service(records, connection);
          break;
        case "tb_partenaire":
          await partenaire(records, connection);
          break;
        case "tb_users":
          await user(records, connection);
          break;
        case "tb_role":
          await role(records, connection);
          break;
        case "tb_role_user":
          await role_user(records, connection);
          break;
        case "tb_video":
          await video(records, connection);
          break;
        default:
          logger.warn(`Table inconnue : ${table}`);
      }

      logger.info(`Données de la table ${table} insérées avec succès.`);
    } catch (error) {
      logger.error(
        `Erreur lors de l'insertion des données pour la table ${table}:`,
        error
      );
    }
  }
}

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
      "SELECT agence_ip, agence_nom FROM tb_agence WHERE agence_ip != '10.56.11.28' ORDER BY agence_ip;"
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

// SYNCHRONISATION DES DONNÉES DES AGENCES
const syncDataFromAgencies = async (contrainte) => {
  try {
    const clientDbConfigs = await getClientDbConfigs();

    await Promise.all(
      clientDbConfigs.map(
        (clientConfig) =>
          queue.add(() => processAgency(clientConfig, contrainte)) // Ajouter chaque tâche à la file d'attente
      )
    );

    logger.info("Toutes les agences ont été synchronisées.");
  } catch (error) {
    logger.error(
      "Erreur lors de la synchronisation des données des agences:",
      error
    );
  }
};

// PROCESSUS POUR CHAQUE AGENCE
const processAgency = async (clientConfig, contrainte) => {
  let connection;
  try {
    connection = await getDbConnection(clientConfig);
    logger.info(
      `Connexion à la base de données de l'agence ${clientConfig.host} établie.`
    );

    if (typeof contrainte === "string" && contrainte.trim().length > 0) {
      logger.info(`Exécution de la requête avec la contrainte: ${contrainte}`);

      const [tickets] = await connection.query(contrainte);

      const [users] = await connection.query(`
        SELECT u.* FROM tb_ticket t 
        JOIN tb_users u ON t.ticket_user_login = u.user_login 
        WHERE t.ticket_date2 BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 WEEK) AND CURDATE() 
        GROUP BY u.user_login ORDER BY u.user_login ASC;
      `);

      users.forEach((user) => {
        user.creation_date = moment(user.creation_date).format(
          "YYYY-MM-DD HH:mm:ss"
        );
      });

      const [role_user] = await connection.query(`
        SELECT u.user_login, r.role_nom FROM tb_role_user ru 
        JOIN tb_users u ON ru.user_id = u.user_id 
        JOIN tb_role r ON ru.role_id = r.role_id 
        JOIN tb_ticket t ON t.ticket_user_id = u.user_id  
        WHERE t.ticket_date2 BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 WEEK) AND CURDATE() 
        GROUP BY u.user_id ASC;
      `);

      const tables = [
        { table: "tb_users", records: users },
        { table: "tb_ticket", records: tickets },
        { table: "tb_role_user", records: role_user },
      ];

      const Data = { data: tables };
      logger.info("Données à envoyer aux serveurs:", Data);

      await processAgencyData(tables, clientConfig.host, Data);
    } else {
      logger.error(
        `La contrainte est indéfinie ou invalide pour l'agence ${clientConfig.host}`
      );
    }
  } catch (error) {
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
};

// TRAITEMENT DES DONNEES RECUPEREES

const processAgencyData = async (tables, agencyHost, Data) => {
  try {
    await axios.post(`http://localhost:3007/Pusher/sync`, Data);
    logger.info(
      `Données envoyées au serveur localhost pour l'agence ${agencyHost}.`
    );
    
    // Appel à syncDataToClients après l'envoi des données
    await syncDataToClients();
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
    await syncDataFromAgencies(wehereTciket);
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
  // Synchronisation des données toutes les 60 minutes entre 9h et 18h du lundi au samedi
  cron.schedule("*/60 9,12,15,17,18 * * 1-6", () => {
    syncDataFromAgencies(
      "SELECT * FROM tb_ticket WHERE ticket_date2 >= NOW() - INTERVAL 1 DAY"
    );
  });
});
