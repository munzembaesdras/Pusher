const axios = require("axios");
const logger = require("../../log");
const { getDbConnection } = require("./db");
const syncDataToClients = require("./syncDataToClients");

// Fonction pour traiter les données d'une agence
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

// Fonction pour traiter les données d'une agence
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

module.exports = processAgency;
