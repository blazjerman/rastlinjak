const express = require('express');
const Automations = require('../models/Automations');
const ESP32 = require('../models/ESP32');
const router = express.Router();
const {protect} = require('../middleware/authMiddleware');

router.get('/', async (req, res) => {
  const id = req.query.id;

  if (!id) {
    res.status(401).json({message: 'ID not provided'});
    return;
  }

  const automations = await Automations.findAll({where: {ESP32_id: id}})
  res.status(200).json({
    automations
  });
});

router.post('/', async (req, res) => {
  const id = req.query.id;
  const {trigger_time, pin, action} = req.body;

  if (!id) {
    res.status(401).json({message: 'ID not provided'});
    return;
  }

  if (!trigger_time | !pin | !action) {
    res.status(400).json({message: 'One or more fields missing'});
  }

  const response = await Automations.create({ESP32_id: id, trigger_time, pin, action});
  res.status(200).json(response);
});

router.put('/', async (req, res) => {
  const {automation_id, ESP32_id} = req.query;
  const {trigger_time} = req.body;

  if (!automation_id | !ESP32_id | !trigger_time) {
    res.status(401).json({message: 'missing data'});
    return;
  }

  const response = await Automations.update({trigger_time: trigger_time},
    {where: {ESP32_id: ESP32_id, id: automation_id}}
  );

  console.log(response);

  if (response[0] == 1) {
    res.status(200).json({
      message: `update sucessful`
    });
  }
// if the value is already the same in database, response will be [0] as well - will report as error
  else {
    res.status(400).json({
      message: `update failed`
    });
  } 
});

router.delete('/', async (req, res) => {
  const {automation_id, ESP32_id} = req.query;

  if (!automation_id | !ESP32_id) {
    res.status(401).json({message: 'missing data'});
    return;
  }

  const response = await Automations.destroy(
    {where: {id: automation_id, ESP32_id: ESP32_id}}
  );

  if (response == 1) {
    res.status(200).json({
      message: `automation deleted`
    });
  }
  else {
    res.status(400).json({
      message: `deletion failed`
    });
  }
});

module.exports = router;