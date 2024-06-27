const { createLogger, format, transports } = require('winston');
const { combine, timestamp, printf, errors } = format;

const myFormat = printf(({ level, message, label, timestamp, stack }) => {
  return `${timestamp} [${label || 'app'}] ${level}: ${message} ${stack || ''}`;
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
    new transports.File({ filename: 'error.log', level: 'error' }),
    new transports.File({ filename: 'combined.log' })
  ],
});

module.exports = logger;
