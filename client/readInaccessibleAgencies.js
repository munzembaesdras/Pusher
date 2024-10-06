const readInaccessibleAgenciesLog = async () => {
  try {
    const data = fs.readFileSync("logs/inaccessible-agencies.log", "utf-8");
    const logEntries = data.split("\n").filter(Boolean).map(JSON.parse);

    // Extraire les agences et les dates d'inaccessibilité
    const agencyEntries = logEntries.map((entry) => ({
      agence: entry.agence,
      date_inaccessible: entry.date_inaccessible,
    }));

    const uniqueAgencies = [
      ...new Set(agencyEntries.map((entry) => entry.agence)),
    ];

    logger.info(`Agences inaccessibles trouvées: ${uniqueAgencies.join(", ")}`);

    // Exécuter les requêtes avec la date d'inaccessibilité pour chaque agence
    for (const { agence, date_inaccessible } of agencyEntries) {
      await executeQueryForAgency(agence, date_inaccessible);
    }
  } catch (error) {
    logger.error(
      "Erreur lors de la lecture du fichier de log des agences inaccessibles:",
      error
    );
  }
};

const executeQueryForAgency = async (agencyHost, dateInaccessible) => {
  let connection;
  try {
    const clientConfig = { host: agencyHost, ...dbConfigClientTemplate };
    connection = await mysql.createConnection(clientConfig);

    logger.info(
      `Exécution de la requête pour l'agence ${agencyHost} avec la date ${dateInaccessible}.`
    );

    // Exemple de requête utilisant la date d'inaccessibilité
    const [result] = await connection.query(
      `SELECT * FROM tb_ticket WHERE ticket_date2 >= ?`,
      [dateInaccessible]
    );
    logger.info(
      `Résultat pour l'agence ${agencyHost} avec la date ${dateInaccessible}:`,
      result
    );
  } catch (error) {
    logger.error(
      `Erreur lors de l'exécution de la requête pour l'agence ${agencyHost}:`,
      error
    );
  } finally {
    if (connection) {
      await connection.end();
      logger.info(`Connexion à l'agence ${agencyHost} fermée.`);
    }
  }
};
