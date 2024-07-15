const express = require('express');
const mysql = require('mysql2/promise');
const axios = require('axios');
const cron = require('node-cron');
const dbConfig = require('./config');

const getDbConnection = async () => {
  
  try {
    const connection = await mysql.createConnection(dbConfig);
    return connection;
  } catch (error) {
    console.error('Error connecting to the database: ', error);
    return null;
  }
};

module.exports = checkRole = async () => {

    const connection = await getDbConnection();
    const result = await connection.query('SELECT is_master FROM tb_agence WHERE agence_is_primary = 1');
    
    if (result && Array.isArray(result) && result.length > 0) {
      const [rows] = result;
      
      if (rows.length > 0) {
        // Destructure if there's at least one row
        const isMaster= rows.map(row => row.is_master);
        //console.log(isMaster);
        return isMaster;
        // Use isMaster variable
      } else {
        // Handle case where no rows are returned (e.g., no matching agency)
        console.error('No agency found with agence_primary = 1');
      }
    } else {
      console.error('Query did not return an array or no result');
    }
    await connection.end();
  };
const startServer = () => {
  require('./server');
};

const startClient = () => {
  require('./client');  
};
require("./server/stream");
const init = async () => {
    
  const isMaster = await checkRole();
  console.log(isMaster);
  if (isMaster==1) {
    console.log('This machine is the server.');
    startServer();
  } else {
    console.log('This machine is a client.');
    startClient();
  }
};

init();
