const mysql = require("mysql");
const MySQLEvents = require("@rodrigogs/mysql-events");

(async () => {
  // Importation dynamique du module ora
  const ora = (await import("ora")).default;

  // Initialisation du spinner
  const spinner = ora({
    text: "🛸 Waiting for database events... 🛸",
    color: "blue",
    spinner: "dots2",
  });

  const program = async () => {
    const connection = mysql.createConnection({
      host: "localhost",
      user: "root",
      password: "",
      database: "TEST",
    });

    const instance = new MySQLEvents(connection, {
      startAtEnd: false, // to record only the new binary logs, if set to false or you didn'y provide it all the events will be console.logged after you start the app
    });

    await instance.start();

    instance.addTrigger({
      name: "monitoring all statments",
      expression: "TEST.*", // listen to TEST database !!!
      statement: MySQLEvents.STATEMENTS.ALL, // you can choose only insert for example MySQLEvents.STATEMENTS.INSERT, but here we are choosing everything
      onEvent: (e) => {
        console.log(e);
        spinner.succeed("👽 _EVENT_ 👽");
        spinner.start();
      },
    });

    instance.on(MySQLEvents.EVENTS.CONNECTION_ERROR, console.error);
    instance.on(MySQLEvents.EVENTS.ZONGJI_ERROR, console.error);
  };

  program().then(spinner.start.bind(spinner)).catch(console.error);
})();
