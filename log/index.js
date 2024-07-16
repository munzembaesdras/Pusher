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
    errors({ stack: true }), // Inclure la stack trace dans le format
    myFormat
  ),
  transports: [
    new transports.Console(),
    new transports.File({ filename: 'logs/error.log', level: 'error' }),
    new transports.File({ filename: 'logs/combined.log' })
  ],
});

module.exports = logger;