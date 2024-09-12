const moment = require("moment");
const { getDbConnection, getClientDbConfigs } = require("./db");
const service = require("../../module/service");
const partenaire = require("../../module/partenaire");
const role = require("../../module/role");
const user = require("../../module/user");
const role_user = require("../../module/role_user");
const video = require("../../module/video");
const logger = require("../../log");
const annonce = require("../../module/annonce");
const { dbConfig, dbConfigClientTemplate } = require("../../config");

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
        case "tb_bande_annonce":
          await annonce(records, connection);
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
const syncDataToClients = async (connection) => {
  try {

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

    const getClientConnections = async () => {
      try {
        const [clients] = await connection.query(
          "SELECT agence_ip, agence_nom FROM tb_agence"
        );
        return clients;
      } catch (error) {
        logger.error("Erreur de récupération des clients:", error);
        throw error;
      }
    };

    const clients = await getClientConnections();

    for (const client of clients) {
      const clientDbConnection = await getDbConnection({
        host: client.agence_ip,
        ...dbConfigClientTemplate,
      });

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

        await insertDataToClients(tables, getClientDbConfigs);

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

module.exports = syncDataToClients;