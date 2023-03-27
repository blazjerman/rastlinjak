const express = require('express');
const router = express.Router();
const esp32 = require('../models/ESP32');

router.get('/info', async (req,res) => {
    const id = req.query.id;

    if (!id) {
        res.status(404).json({
            message: 'ID not provided'
        });
    }

    const info = await esp32.findOne({
        attributes: ['id', 'mac', 'update_interval'],
        where: {
            id: id
        }
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

module.exports = router;