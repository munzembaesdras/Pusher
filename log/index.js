// ./CONFIG/LOGGER.JS
const { createLogger, format, transports } = require("winston");
require("winston-daily-rotate-file");
const moment = require("moment-timezone");
const { combine, timestamp, printf, errors } = format;

// FORMAT PERSONNALISÉ POUR LES LOGS
const myFormat = printf(({ level, message, label, timestamp, stack }) => {
  return `${timestamp} [${label || "Pusher"}] ${level}: ${message} ${
    stack || ""
  }`;
});

const logger = createLogger({
  level: "info",
  format: combine(
    timestamp({
      format: () => moment().tz("Africa/Kinshasa").format(),
    }),
    myFormat
  ),
  transports: [
    // TRANSPORT POUR LES LOGS 'INFO' UNIQUEMENT
    new transports.DailyRotateFile({
      filename: "logs/info-%DATE%.log",
      datePattern: "YYYY-MM-DD",
      level: "info", // INCLUT UNIQUEMENT LES LOGS DE NIVEAU 'INFO'
      format: combine(
        timestamp({
          format: () => moment().tz("Africa/Kinshasa").format(),
        }),
        myFormat
      ),
    }),
    // TRANSPORT POUR LES LOGS 'ERROR' UNIQUEMENT
    new transports.DailyRotateFile({
      filename: "logs/error-%DATE%.log",
      datePattern: "YYYY-MM-DD",
      level: "error", // INCLUT UNIQUEMENT LES LOGS DE NIVEAU 'ERROR'
      format: combine(
        timestamp({
          format: () => moment().tz("Africa/Kinshasa").format(),
        }),
        myFormat
      ),
    }),
    // TRANSPORT POUR LA SORTIE CONSOLE (OPTIONNEL)
    new transports.Console({
      format: combine(
        timestamp({
          format: () => moment().tz("Africa/Kinshasa").format(),
        }),
        myFormat
      ),
    }),
  ],
});

module.exports = logger;
