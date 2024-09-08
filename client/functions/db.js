const mysql = require("mysql2/promise");
const { dbConfig, dbConfigClientTemplate } = require("../../config");

// Connexion à la base de données centrale
const getDbConnection = async (config = dbConfig) => {
  const connection = await mysql.createConnection(config);
  return connection;
};

// Récupération des configurations des bases de données des clients
const getClientDbConfigs = async () => {
  let connection;
  try {
    connection = await getDbConnection();
    const [agencies] = await connection.query(
      "SELECT agence_ip, agence_nom FROM tb_agence WHERE agence_ip != '10.56.11.28' ORDER BY agence_ip;"
    );
    return agencies.map((agency) => ({
      host: agency.agence_ip,
      ...dbConfigClientTemplate,
    }));
  } catch (error) {
    throw new Error(
      "Erreur de récupération des configurations des bases de données des agences: " +
        error.message
    );
  } finally {
    if (connection) await connection.end();
  }
};

module.exports = {
  getDbConnection,
  getClientDbConfigs,
};
