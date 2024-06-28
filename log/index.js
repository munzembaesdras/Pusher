const { createLogger, format, transports } = require('winston');
require('winston-daily-rotate-file');
const { combine, timestamp, printf, errors, json } = format;

// Format personnalisé pour les logs
const myFormat = printf(({ level, message, label, timestamp, stack }) => {
  return `${timestamp} [${label || 'Pusher'}] ${level}: ${message} ${stack || ''}`;
});

// Transport pour écrire les logs dans un fichier JSON
const transport = new transports.DailyRotateFile({
  filename: 'logs/application-%DATE%.json',
  datePattern: 'YYYY-MM-DD',
  zippedArchive: true,
  maxSize: '20m',
  maxFiles: '14d',
  format: combine(
    timestamp(),
    json() // Écrire les logs au format JSON
  )
});

const logger = createLogger({
  level: 'info',
  format: combine(
    timestamp(),
    errors({ stack: true }), // Inclure la stack trace dans le format
    myFormat
  ),
  transports: [
    new transports.Console(),
    new transports.File({ filename: 'logs/error.log', level: 'error' }),
    new transports.File({ filename: 'logs/combined.log' }),
    transport // Ajout du transport de fichier JSON
  ],
});

module.exports = logger;
