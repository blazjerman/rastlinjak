'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('automations', {
      id: {
        type: Sequelize.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true
      },
      ESP32_id: {
        type: Sequelize.INTEGER,
        allowNull: false
      },
      trigger_time: {
        type: Sequelize.TIME,
        allowNull: false
      },
      action: {
        type: Sequelize.STRING,
        allowNull: false
      },
      pin: {
        type: Sequelize.INTEGER,
        allowNull: false
      },
      active: {
        type: Sequelize.BOOLEAN,
        allowNull: false,
        defaultValue: true
      }
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('automations');
  }
};