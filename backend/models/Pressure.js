const { sequelize } = require('../config/db');
const { DataTypes } = require('sequelize');

const Pressure = sequelize.define('Pressure', {
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
  freezeTableName: true
});

module.exports = Pressure;