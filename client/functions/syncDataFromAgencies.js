const mysql = require("mysql2/promise");
const PQueue = require("@esm2cjs/p-queue").default;
const logger = require("../../log");
const getDbConnection = require("./db").getDbConnection;
const getClientDbConfigs = require("./db").getClientDbConfigs;
const processAgency = require("./processAgency");
const wehereTciket = "SELECT * FROM tb_ticket WHERE ticket_date2 >= NOW() - INTERVAL 1 DAY";

const queue = new PQueue({ concurrency: 5 });

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
    logger.error("Erreur lors de la synchronisation des données des agences:", error);
  }
};

module.exports = syncDataFromAgencies;
