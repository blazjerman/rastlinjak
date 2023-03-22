const { Sequelize } = require('sequelize');
require('dotenv').config({path: '../.env'});

const DB_HOST = process.env.NODE_ENV === 'production' ? process.env.DB_HOST_PRODUCTION : process.env.DB_HOST_DEV;

const sequelize = new Sequelize(
  process.env.DB,
  process.env.DB_USER,
  process.env.DB_PASSWORD,
  {
    host: process.env.DB_HOST,
    dialect: 'mysql',
  }
);

const connectDB = (async () => {
  try {
    await sequelize.authenticate();
    console.log('Connection has been established successfully.');
  } catch (err) {
    console.error('Unable to connect to the database:', err);
  }
});

module.exports = {sequelize, connectDB};