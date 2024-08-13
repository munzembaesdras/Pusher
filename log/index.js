// ./config/logger.js
const { createLogger, format, transports } = require('winston');
require('winston-daily-rotate-file');
const moment = require('moment-timezone');
const { combine, timestamp, printf, errors } = format;

// Format personnalisé pour les logs
const myFormat = printf(({ level, message, label, timestamp, stack }) => {
  return `${timestamp} [${label || 'Pusher'}] ${level}: ${message} ${stack || ''}`;
});

const logger = createLogger({
  level: 'info',
  format: combine(
    timestamp({
      format: () => moment().tz("Africa/Kinshasa").format()
    }),
    myFormat
  ),
  transports: [
    // Transport pour les logs 'info' uniquement
    new transports.DailyRotateFile({
      filename: 'logs/info-%DATE%.log',
      datePattern: 'YYYY-MM-DD',
      level: 'info', // Inclut uniquement les logs de niveau 'info'
      format: combine(
        timestamp({
          format: () => moment().tz("Africa/Kinshasa").format()
        }),
        myFormat
      )
    }),
    // Transport pour les logs 'error' uniquement
    new transports.DailyRotateFile({
      filename: 'logs/error-%DATE%.log',
      datePattern: 'YYYY-MM-DD',
      level: 'error', // Inclut uniquement les logs de niveau 'error'
      format: combine(
        timestamp({
          format: () => moment().tz("Africa/Kinshasa").format()
        }),
        myFormat
      )
    }),
    // Transport pour la sortie console (optionnel)
    new transports.Console({
      format: combine(
        timestamp({
          format: () => moment().tz("Africa/Kinshasa").format()
        }),
        myFormat
      )
    })
  ],
});

module.exports = logger;
