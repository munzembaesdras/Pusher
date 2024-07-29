const fs = require("fs");
const path = require("path");
const Client = require("ssh2-sftp-client");
const mysql = require("mysql2/promise");
const {sftpConfig ,dbConfig } = require("../config"); // Votre configuration de base de données

// Fonction pour récupérer la liste des vidéos de la base de données
const getVideosFromDatabase = async () => {
  const connection = await mysql.createConnection(dbConfig);
  const [videos] = await connection.query("SELECT video_name, video_id, video_key FROM tb_video");
  await connection.end();
  return videos;
};

// Fonction pour vérifier les vidéos manquantes et les télécharger
const checkAndDownloadMissingVideos = async () => {
  /* const localDirectory = "./videos"; */ // Répertoire local où les vidéos doivent être stockées
  const videos = await getVideosFromDatabase();
  
  // Liste des vidéos manquantes
  const missingVideos = [];

  // Vérification des vidéos manquantes
  for (const video of videos) {
    const localFilePath = path.join(sftpConfig.localPath, video.video_name);
    if (!fs.existsSync(localFilePath)) {
      console.log(`Video missing: ${video.video_name}`);
      missingVideos.push(video.video_name);
    }
  }

  // Si des vidéos sont manquantes, les télécharger via SFTP
  if (missingVideos.length > 0) {
    const sftp = new Client();
    try {
      console.log("Connecting to SFTP server...");
      await sftp.connect({host:sftpConfig.host, 
        username:sftpConfig.username, 
        password:sftpConfig.password, 
        port:sftpConfig.port
      });

      for (const video_name of missingVideos) {
        const remoteFilePath = `${sftpConfig.remotePath}${video_name} `; // Chemin distant du fichier
        const localFilePath = path.join(sftpConfig.localPath, video_name); // Chemin local du fichier
        console.log(`Downloading ${video_name} from SFTP...`);
        await sftp.fastGet(remoteFilePath, localFilePath);
        console.log(`Downloaded ${video_name} to ${localFilePath}`);
      }
    } catch (error) {
      console.error(`Failed to fetch files: `, error);
    } finally {
      sftp.end();
    }
  } else {
    console.log("No missing videos found.");
  }
};

module.exports = { checkAndDownloadMissingVideos };