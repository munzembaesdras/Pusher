const fs = require("fs");
const path = require("path");
const Client = require("ssh2-sftp-client");
const mysql = require("mysql2/promise");
const dbConfig = require("../config"); // Votre configuration de base de données
const sftpConfig=require("../config")


// Fonction pour récupérer la liste des vidéos de la base de données
const getVideosFromDatabase = async () => {
  const connection = await mysql.createConnection(dbConfig);
  const [videos] = await connection.query(
    "SELECT video_id, video_key FROM videos"
  );
  await connection.end();
  return videos;
};

// Fonction pour vérifier les vidéos manquantes et les télécharger
const checkAndDownloadMissingVideos = async () => {
  const localDirectory = "./videos"; // Répertoire local où les vidéos doivent être stockées
  const videos = await getVideosFromDatabase();

  // Liste des vidéos manquantes
  const missingVideos = [];

  // Vérification des vidéos manquantes
  for (const video of videos) {
    const localFilePath = path.join(localDirectory, video.video_key);
    if (!fs.existsSync(localFilePath)) {
      console.log(`Video missing: ${video.video_key}`);
      missingVideos.push(video.video_key);
    }
  }

  // Si des vidéos sont manquantes, les télécharger via SFTP
  if (missingVideos.length > 0) {
    const sftp = new Client();
    try {
      console.log("Connecting to SFTP server...");
      await sftp.connect(sftpConfig);

      for (const videoKey of missingVideos) {
        const remoteFilePath = `/remote/path/to/${videoKey}`; // Chemin distant du fichier
        const localFilePath = path.join(localDirectory, videoKey); // Chemin local du fichier
        console.log(`Downloading ${videoKey} from SFTP...`);
        await sftp.fastGet(remoteFilePath, localFilePath);
        console.log(`Downloaded ${videoKey} to ${localFilePath}`);
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

// Appel de la fonction pour vérifier et télécharger les vidéos manquantes
checkAndDownloadMissingVideos();
