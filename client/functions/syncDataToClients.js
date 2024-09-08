const moment = require("moment");
const { getDbConnection } = require("./db");
const service = require("./service");
const partenaire = require("./partenaire");
const role = require("./role");
const user = require("../server/user");
const role_user = require("../server/role_user");
const video = require("./video");
const logger = require("../log");

// Fonction pour insérer les données dans les bases des clients
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

// Fonction pour synchroniser les données avec les clients
