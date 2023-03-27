const express = require('express');
const router = express.Router();
const Temperature = require('../models/Temperature');

// =============== temperature ===============

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

router.get('/temperature/now', async(req, res) => {
  let sensor_id = req.query.sensor_id;
  let ESP32_id = req.query.esp_id;

  if (!sensor_id) { sensor_id = 0; }
  if (!ESP32_id) { ESP32_id = 0; }

  const lastTemp = await Temperature.findOne({
    attributes: ['value', 'time'],
    where: {
      ESP32_id: ESP32_id,
      sensor_id: sensor_id
    },
    order: [[ 'time', 'DESC' ]],
  });

  res.status(200).json({
    lastTemp
  })
});

// =============== humidity ===============

router.get('/humidity', async (req, res) => {
  let sensor_id = req.query.sensor_id;
  let ESP32_id = req.query.esp_id;

  if (!sensor_id) { sensor_id = 0; }
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

router.get('/humidity/now', async (req, res) => {
  let sensor_id = req.query.sensor_id;
  let ESP32_id = req.query.esp_id;

  if (!sensor_id) { sensor_id = 0; }
  if (!ESP32_id) { ESP32_id = 0; }
    
  const lastHumidity = await Humidity.findOne({
    attributes: ['value', 'time'],
    where: {
      ESP32_id: ESP32_id,
      sensor_id: sensor_id
    },
    order: [[ 'time', 'DESC' ]]
  });

  res.status(200).json({
    lastHumidity
  });
});

// =============== pressure ===============

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

router.get('/pressure/now', async (req, res) => {
  let sensor_id = req.query.sensor_id;
  let ESP32_id = req.query.esp_id;

  if (!sensor_id){ sensor_id = 0; }
  if (!ESP32_id) { ESP32_id = 0; }
    
  const lastPressure = await Temperature.findOne({
    attributes: ['value', 'time'],
    where: {
      ESP32_id: ESP32_id,
      sensor_id: sensor_id
    },
    order: [[ 'time', 'DESC' ]]
  });

  res.status(200).json({
    lastPressure
  });
});

module.exports = router;