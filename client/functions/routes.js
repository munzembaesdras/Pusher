const express = require("express");
const router = express.Router();
const syncDataFromAgencies = require("./syncDataFromAgencies");
const logger = require("../../log");

const wehereTciket = "SELECT * FROM tb_ticket WHERE ticket_date2 >= NOW() - INTERVAL 2 DAY";

// Route pour déclencher la synchronisation manuellement
router.get("/Pusher/sync", async (req, res) => {
  try {
    await syncDataFromAgencies(wehereTciket);
    res.sendStatus(200);
    logger.info("Synchronisation des données des agences réussie.");
  } catch (error) {
    res.sendStatus(500);
    logger.error("Erreur lors de la synchronisation des données des agences:", error);
  }
});

module.exports = router;
