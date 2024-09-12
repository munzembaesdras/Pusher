const fs = require("fs");
const path = require("path");
const Client = require("ssh2-sftp-client");
const mysql = require("mysql2/promise");
const { sftpConfig, dbConfig } = require("../config");
const logger = require("../log"); // Assurez-vous que vous avez un module de log configuré

// Fonction pour récupérer la liste des vidéos de la base de données
const getVideosFromDatabase = async () => {
  let connection;
  try {
    connection = await mysql.createConnection(dbConfig);
    const [videos] = await connection.query(
      "SELECT video_name, video_id, video_key FROM tb_video"
    );
    logger.info(`Fetched ${videos.length} videos from database.`);
    return videos;
  } catch (error) {
    logger.error("Error fetching videos from database:", error);
    throw error;
  } finally {
    if (connection) {
      await connection.end();
      logger.info("Database connection closed.");
    }
  }
};

// Fonction pour vérifier les vidéos manquantes et les télécharger
const checkAndDownloadMissingVideos = async () => {
  const videos = await getVideosFromDatabase();

  // Liste des vidéos manquantes
  const missingVideos = [];

  // Vérification des vidéos manquantes
  for (const video of videos) {
    const localFilePath = path.join(sftpConfig.localPath, video.video_name);
    if (!fs.existsSync(localFilePath)) {
      logger.warn(`Video missing: ${video.video_name}`);
      missingVideos.push(video.video_name);
    }
  }

  // Si des vidéos sont manquantes, les télécharger via SFTP
  if (missingVideos.length > 0) {
    const sftp = new Client();
    try {
      logger.info("Connecting to SFTP server...");
      await sftp.connect({
        host: sftpConfig.host,
        username: sftpConfig.username,
        password: sftpConfig.password,
        port: sftpConfig.port,
      });

      for (const video_name of missingVideos) {
        const remoteFilePath = `${sftpConfig.remotePath}${video_name}`;
        const localFilePath = path.join(sftpConfig.localPath, video_name);
        logger.info(`Downloading ${video_name} from SFTP...`);
        await sftp.fastGet(remoteFilePath, localFilePath);
        logger.info(`Downloaded ${video_name} to ${localFilePath}`);
      }
    } catch (error) {
      logger.error("Failed to fetch files from SFTP:", error);
    } finally {
      sftp.end();
      logger.info("SFTP connection closed.");
    }
  } else {
    logger.info("No missing videos found.");
  }
};

module.exports = { checkAndDownloadMissingVideos };
