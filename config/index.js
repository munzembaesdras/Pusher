module.exports = {
  dbConfig: {
    host: "localhost",
    user: "root",
    port: 3306,
    password: "",
    database: "extratim",
  },
  sftpConfig: {
    host: "192.168.11.101", // Remplacez par l'adresse de votre serveur SFTP
    port: 22,
    username: "ftp-user", // Remplacez par votre nom d'utilisateur SFTP
    password: "1234", // Remplacez par votre mot de passe SFTP
    remotePath:
      "glassfish-4.1.2/glassfish4/glassfish/domains/domain1/applications/Extratimeplus/resources/main/video/", // Chemin distant où les vidéos sont stockées
    localPath: "/home/jsadmin/", // Répertoire local où les vidéos doivent être stockées
  },
};
