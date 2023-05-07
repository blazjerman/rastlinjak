const express = require('express');
const router = express.Router();
const cron = require('cron-time-generator');
const Automations = require('../models/Automations');
const ESP32 = require('../models/ESP32');
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

/**
 * count - 1,2,3,...,10
 * interval - HOURS, DAYS, WEEKS
 * time - time to execute function
 * pin - pin number to execute action on
 * action - TURN_ON, TURN_OFF
**/

router.post('/', async (req, res) => {
  const id = req.query.id;
  const {count, interval, time, pin, action} = req.body;

  if (!id) {
    res.status(401).json({message: 'ID not provided'});
    return;
  }

  if (!count | !interval | !pin | !action) {
    res.status(400).json({message: 'One or more fields missing'});
  }

  let cron_string = null;
  switch (interval) {
    case 'HOUR':
      cron_string = cron.everyHour();
      break;
    case 'DAY':
      t = time.split(':');
      hour = t[0]
      minute = t[1]
      cron_string = cron.everyDayAt(hour, minute);
      break;
    case 'WEEK':
      hour = t[0]
      minute = t[1]
      cron_string = cron.everyWeekAt(hour, minute);
      break;
  }

  if (cron_string == null) {
    res.status(401).json({message: 'unable to create automation from given data'});
  }

  const response = await Automations.create({
    ESP32_id: id, 
    cron_string, 
    action,
    pin
  });
  res.status(200).json(response);
});

router.put('/', async (req, res) => {
  const {automation_id, ESP32_id} = req.query;
  const {active} = req.body;

  if (!automation_id | !ESP32_id | !active) {
    res.status(401).json({message: 'missing data'});
    return;
  }

  const response = await Automations.update({active: active},
    {where: {ESP32_id: ESP32_id, id: automation_id}}
  );

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