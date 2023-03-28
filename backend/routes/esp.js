const express = require('express');
const ESP32 = require('../models/ESP32');
const router = express.Router();
const esp32 = require('../models/ESP32');

router.get('/info', async (req,res) => {
    const id = req.query.id;

    if (!id) {
        res.status(401).json({
            message: 'ID not provided'
        });
        return;
    }

    const info = await esp32.findOne({
        attributes: ['outputs'],
        where: { id: id }
    });

    if (!info) {
        res.status(404).json({
            message: 'ESP not found'
        });
    }

    res.status(200).json({
        info
    });
});

router.put('/interval', async (req, res) => {
    const id = req.query.id;
    const {update_interval} = req.body;

    if (!id) {
        res.status(401).json({message: 'ID not provided'});
        return;
    }
    const esp = await ESP32.findOne({
        where: { id: id }
    });
    if (!esp) {
        res.status(404).json({messasge: 'ESP not found'});
        return;
    }
    const response = await ESP32.update({update_interval: update_interval},{
        where: { id: id }
    });
    if (response[0] == 1) {
        res.status(200).json({
            message: `ESP id ${id} update interval updated sucessfully`
        });
    }
    // if the value is already the same in database, response will be [0] as well - will report as error
    else {
        res.status(400).json({
            message: `ESP id ${id} update interval update failed`
        });
    }
});

router.put('/outputs', async (req, res) => {
    const id = req.query.id;
    const {outputs} = req.body;
    
    if (!id) {
        res.status(401).json({message: 'ID not provided'});
        return;
    }
    const esp = await ESP32.findOne({
        where: { id: id }
    });
    if (!esp) {
        res.status(404).json({messasge: 'ESP not found'});
        return;
    }
    const response = await ESP32.update({outputs: outputs},{
        where: { id: id }
    });
    if (response[0] == 1) {
        res.status(200).json({
            message: `ESP id ${id} update interval updated sucessfully`
        });
    }
    // if the value is already the same in database, response will be [0] as well - will report as error
    else {
        res.status(400).json({
            message: `ESP id ${id} update interval update failed`
        });
    }
});

module.exports = router;