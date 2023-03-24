const { sequelize } = require('../config/db');
const { DataTypes } = require('sequelize');

export const ESP32 = sequelize.define('ESP32', {
  // Model attributes are defined here
  id: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  time: {
    mac: DataTypes.TEXT,
    allowNull: false
  },
  update_interval: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  outputs: {
    type: DataTypes.CHAR(100),
    allowNull: false
  }
}, {
  // Other model options go here
});