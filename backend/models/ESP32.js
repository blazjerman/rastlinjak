const { sequelize } = require('../config/db');
const { DataTypes } = require('sequelize');

const ESP32 = sequelize.define('ESP32', {
  // Model attributes are defined here
  id: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true
  },
  mac: {
    type: DataTypes.TEXT,
    allowNull: false
  },
  user_id: {
    type: DataTypes.INTEGER,
    allowNull: true
  },
  update_interval: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  outputs: {
    type: DataTypes.INTEGER,
    allowNull: false
  }
}, {
  freezeTableName: true,
  createdAt: false,
  updatedAt: false
});

module.exports = ESP32;