const express = require("express");
const cron = require("node-cron");
const logger = require("../log");
const syncDataFromAgencies = require("./functions/syncDataFromAgencies");
const routes = require("./functions/routes");

const app = express();
const PORT = 3008;

// Middleware
app.use(express.json({ limit: "100mb" }));

// Routes
app.use(routes);

// Démarrage du serveur
app.listen(PORT, () => {
  logger.info(`Le serveur s'exécute sur le port ${PORT}`);
  syncDataFromAgencies("SELECT * FROM tb_ticket WHERE ticket_date2 >= NOW() - INTERVAL 1 DAY");
  
  // Synchronisation des données toutes les 60 minutes entre 9h et 18h du lundi au samedi
  cron.schedule("*/60 9,12,15,17,18 * * 1-6", () => {
    syncDataFromAgencies(
      "SELECT * FROM tb_ticket WHERE ticket_date2 >= NOW() - INTERVAL 1 DAY"
    );
  });
});
