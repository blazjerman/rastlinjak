const { sequelize } = require('../config/db');
const { DataTypes } = require('sequelize');

export const Temperature = sequelize.define('Temperature', {
  // Model attributes are defined here
  value: {
    type: DataTypes.FLOAT,
    allowNull: true
  },
  time: {
    type: DataTypes.DATE,
    allowNull: false
  },
  sesnor_id: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  ESP32_id: {
    type: DataTypes.INTEGER,
    allowNull: false
  }
}, {
  // Other model options go here
});