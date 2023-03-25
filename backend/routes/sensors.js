const express = require('express');
const router = express.Router();
const Temperature = require('../models/Temperature');

router.get('/temperature', async (req, res) => {
  let sensor_id = req.query.sensor_id;
  let ESP32_id = req.query.esp_id;

  if (!sensor_id) { sensor_id = 0; }
  if (!ESP32_id) { ESP32_id = 0; }
    
  const tempData = await Temperature.findAll({
    attributes: ['value', 'time'],
    where: {
      ESP32_id: ESP32_id,
      sensor_id: sensor_id
    }
  });

  res.status(200).json({
    tempData
  });
});

router.get('/humidity', async (req, res) => {
  let sensor_id = req.query.sensor_id;
  let ESP32_id = req.query.esp_id;

  if (!sensor_id){ sensor_id = 0; }
  if (!ESP32_id) { ESP32_id = 0; }
    
  const humData = await Temperature.findAll({
    attributes: ['value', 'time'],
    where: {
      ESP32_id: ESP32_id,
      sensor_id: sensor_id
    }
  });

  res.status(200).json({
    humData
  });
});

router.get('/pressure', async (req, res) => {
  let sensor_id = req.query.sensor_id;
  let ESP32_id = req.query.esp_id;

  if (!sensor_id){ sensor_id = 0; }
  if (!ESP32_id) { ESP32_id = 0; }
    
  const pressureData = await Temperature.findAll({
    attributes: ['value', 'time'],
    where: {
      ESP32_id: ESP32_id,
      sensor_id: sensor_id
    }
  });

  res.status(200).json({
    pressureData
  });
});

module.exports = router;