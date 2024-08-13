module.exports = {
  dbConfig: {
    host: "localhost", // Adresse du serveur central où l'application est hébergée
    user: "root",
    port: 3307,
    password: "admin",
    database: "extratime", // Nom de la base de données centrale
  },
  dbConfigClientTemplate: {
    user: "root",
    port: 3306,
    password: "Josam@3307",
    database: "extratime"
  },
  sftpConfig: {
    host: "192.168.11.101",
    port: 22,
    username: "ftp-user",
    password: "1234",
    remotePath: "/",
    localPath: "C:/glassfish-4.1.2/glassfish4/glassfish/domains/domain1/applications/Extratimeplus/resources/main/video/",
  },
};
