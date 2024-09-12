const mysql = require("mysql2/promise");
const mysqls = require("mysql");

const MySQLEvents = require("@rodrigogs/mysql-events");
const { dbConfig } = require("../config");
const checkRole = require("../index");
const logger = require("../log");
const moment = require("moment");

const axios = require("axios");

const getDbConnection = async () => {
  const connection = await mysql.createConnection(dbConfig);
  return connection;
};
const getClientIps = async () => {
  let connection;

  try {
    connection = await getDbConnection();
    const [rows] = await connection.query("SELECT agence_ip FROM tb_agence");
    console.log(rows.length);
    return rows.map((row) => row.agence_ip);
  } catch (error) {
    logger.error("Erreur de récupération des IPs des clients:", error);
    throw error;
  } finally {
    if (connection) await connection.end();
  }
};

const getServerIps = async () => {
  let connection;
  try {
    connection = await getDbConnection();
    const [rows] = await connection.query(
      "SELECT url_master FROM tb_config_system"
    );
    return rows.map((row) => row.url_master);
  } catch (error) {
    logger.error("Erreur de récupération des IPs des serveurs:", error);
    throw error;
  } finally {
    if (connection) await connection.end();
  }
};
(async () => {
  // Import dynamic module ora
  const ora = (await import("ora")).default;

  // Initialize spinner
  const spinner = ora({
    text: "🛸 Waiting for database events... 🛸",
    color: "blue",
    spinner: "dots2",
  });

  const program = async () => {
    const connection = mysqls.createConnection({
      host: dbConfig.host,
      user: dbConfig.user,
      password: dbConfig.password,
      port: dbConfig.port,
      database: dbConfig.database,
      charset: "utf8mb4", // Use utf8mb4 instead of UTF8
      authPlugins: {
        mysql_clear_password: () => () => Buffer.from(dbConfig.password), // Example for clear password auth
      },
    });

    const instance = new MySQLEvents(connection, {
      startAtEnd: true,
    });

    await instance.start();

    instance.addTrigger({
      name: "monitoring all statements",
      expression: `${dbConfig.database}.tb_users`,
      statement: MySQLEvents.STATEMENTS.ALL,
      onEvent: async (event) => {
        const { type, schema, table, affectedRows } = event;
        console.log("salut biso yzyo");
        if (
          type === "UPDATE" &&
          schema === dbConfig.database &&
          table === "tb_users"
        ) {
          affectedRows.forEach(async (row) => {
            const { after, before } = row;
            after.creation_date = moment(after.creation_date).format(
              "YYYY-MM-DD HH:mm:ss"
            );
            const tables = [{ table: "tb_users", records: [after] }];

            if (after.user_password != before.user_password) {
              const isMaster = await checkRole();
              if (isMaster == 1) {
                const clientIps = await getClientIps();

                const promises = clientIps.map(async (clientIp) => {
                  try {
                    await axios.post(`http://${clientIp}:3005/Pusher/sync`, {
                      data: tables,
                    });
                  } catch (error) {
                    logger.error(
                      `Erreur de reunitialisation password au client ${clientIp}:`,
                      error
                    );
                  }
                });

                await Promise.all(promises);

                logger.info(
                  "reunitialisation envoyées aux clients avec succès."
                );
              } else {
                const serverIps = await getServerIps();

                for (serverIp of serverIps) {
                  try {
                    await axios.post(`http://${serverIp}:3005/Pusher/sync`, {
                      data: tables,
                    });
                  } catch (error) {
                    console.log(
                      `Erreur de reunitialisation password ${serverIp}`,
                      error
                    );
                  }
                }
              }
              console.log(
                "Ne pas egal ",
                after.user_password,
                "!=",
                before.user_password
              );
            }
          });
        }
      },
    });

    instance.on(MySQLEvents.EVENTS.CONNECTION_ERROR, console.error);
    instance.on(MySQLEvents.EVENTS.ZONGJI_ERROR, console.error);
  };

  // Start the program and handle spinner separately
  program()
    .then(() => {
      // You can continue your main program logic here
      console.log("MySQL event monitoring started.");
    })
    .catch((error) => {
      console.error("Error in MySQL event monitoring:", error);
    })
    .finally(() => {
      // Ensure spinner is started
      spinner.start();
    });
})();
