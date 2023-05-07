const { sequelize } = require('../config/db');
const { DataTypes } = require('sequelize');

const Automations = sequelize.define('automations', {
  id: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true,
    autoIncrement: true
  },
  ESP32_id: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  cron_string: {
    type: DataTypes.STRING,
    allowNull: false
  },
  action: {
    type: DataTypes.STRING,
    allowNull: false
  },
  pin: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  active: {
    type: DataTypes.BOOLEAN,
    allowNull: false,
    defaultValue: true
  }
}, {
  freezeTableName: true,
  createdAt: false,
  updatedAt: false
});

module.exports = Automations;