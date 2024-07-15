const mysql = require("mysql");
const MySQLEvents = require("@rodrigogs/mysql-events");
const dbConfig = require("../config");
const checkRole = require('../index');
const logger=require('../log')
//const getServerIps = require('../client/index');
const axios = require("axios");
const getDbConnection = async () => {
  const connection = await mysql.createConnection(dbConfig);
  return connection;
};
const getClientIps = async () => {
  let connection;
  
  try {
      connection = await getDbConnection();console.log('rows');
      const [rows] = await connection.query("SELECT agence_ip FROM tb_agence");
      console.log(rows.length);
      return rows.map((row) => row.agence_ip);
  } catch (error) {
      logger.error('Erreur de récupération des IPs des clients:', error);
      throw error;
  } finally {
      if (connection) await connection.end();
  }
};

const getServerIps = async () => {
  let connection;
  try {
      connection = await getDbConnection();
      const [rows] = await connection.query("SELECT url_master FROM tb_config_system");
      return rows.map((row) => row.url_master);
  } catch (error) {
      logger.error('Erreur de récupération des IPs des serveurs:', error);
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
    const connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: 'admin3307',
      port: '3307',
      database: 'extratime',
      charset: 'utf8mb4',  // Use utf8mb4 instead of UTF8
      authPlugins: {
        mysql_clear_password: () => () => Buffer.from('admin3307') // Example for clear password auth
      }
    });

    const instance = new MySQLEvents(connection, {
      startAtEnd: true,
    });

    await instance.start();

    instance.addTrigger({
      name: "monitoring all statements",
      expression: "extratime.tb_users",
      statement: MySQLEvents.STATEMENTS.ALL,
      onEvent: async (event) => {
        const { type, schema, table, affectedRows } = event;

        if (type === 'UPDATE' && schema === 'extratime' && table === 'tb_users') {
          affectedRows.forEach(async (row) => {
            const { after, before } = row;
            const tables = [
              {table: "tb_users", records: after}
            ];

            if(after.user_password != before.user_password){
              const isMaster = await checkRole();
              if (isMaster==1) {
                try{
                  const clientIps = await getClientIps();
                  for (clientIp of clientIps) {
                   // await axios.post(`http://${clientIp}:3005/sync`);
                  }
                }catch(error){
                  console.log(`Error d'envoie des données ${clientIp}`, error);
                }
              } else {
                try{
                  const serverIps = await getServerIps();
                  for (serverIp of serverIps) {
                  //  await axios.post(`http://${serverIp}:3005/sync`);
                  }
                }catch(error){
                  console.log(`Error d'envoie des données ${serverIp}`, error);
                }
              }
              console.log('Ne pas egal ', after.user_password,'!=',before.user_password);
            }

           /*  console.log(`Updating tb_users: ${JSON.stringify(before)} -> ${JSON.stringify(after)}`);
            for (const record of JSON.stringify(before)) {
              console.log(record);
            } */
           /*  // Example of updating `tb_users` based on the event data
            const query = `UPDATE tb_users set partenaire_id=? where user_login=?`;
            const values = [after.partenaire_id, before.user_login];

            try {
              const connection = await getDbConnection();
              const [result] = await connection.execute(query, values);
              console.log(`Update successful: ${result.affectedRows} rows affected.`);
            } catch (error) {
              console.error('Error executing update query:', error);
            } */
          });
        }

        /* Uncomment if you want to use spinner
        spinner.succeed("👽 _EVENT_ 👽");
        spinner.start();
        */
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
