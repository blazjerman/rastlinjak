const express = require('express');
const ESP32 = require('../models/ESP32');
const router = express.Router();
const {protect, allowRoles} = require('../middleware/authMiddleware');


router.get('/info', /*protect,*/ async (req,res) => {
    const id = req.query.id;

    if (!id) {
        res.status(401).json({
            message: 'ID not provided'
        });
        return;
    }

    const esp = await ESP32.findOne({
        attributes: ['outputs', 'user_id'],
        where: { id: id }
    });

    if (!esp) {
        res.status(404).json({
            message: 'ESP not found'
        });
        return;
    }

    /*if (!esp.user_id == req.user.id) {
        res.status(401).json({
            message: 'Not authorized to view this info'
        });
        return;
    }*/

    res.status(200).json({
        outputs: esp.outputs
    });
});

router.put('/interval', /*protect,*/ async (req, res) => {
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

    /*if (!esp.user_id == req.user.id) {
        res.status(401).json({
            message: 'Not authorized to perform this action'
        });
        return;
    }*/

    const response = await ESP32.update({update_interval: update_interval},
        {where: { id: id }
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

router.get('/outputs', async (req, res) => {
    const id = req.query.id;

    if (!id) {
        res.status(401).json({message: 'ID not provided'});
        return;
    }
    
    const outputs = await getOutputs(id);
    res.status(200).json({
        outputs
    });
});

router.put('/outputs', /*protect,*/ async (req, res) => {
    const id = req.query.id;
    const {pin} = req.body;
    
    if (!id) {
        res.status(401).json({message: 'ID not provided'});
        return;
    }
    const esp = await ESP32.findOne({
        attributes: ['outputs', 'user_id'],
        where: { id: id }
    });
    if (!esp) {
        res.status(404).json({messasge: 'ESP not found'});
        return;
    }

    /*if (!esp.user_id == req.user.id) {
        res.status(401).json({
            message: 'Not authorized to perform this action'
        });
        return;
    }*/

    const flipped = flipBitAtPosition(esp.outputs, pin);

    const response = await ESP32.update({outputs: flipped},{
        where: { id: id }
    });

    const outputs = await getOutputs(id);

    if (response[0] == 1) {
        res.status(200).json({
            message: `ESP id ${id} update interval updated sucessfully`,
            outputs: outputs
        });
    }
    // if the value is already the same in database, response will be [0] as well - will report as error
    else {
        res.status(400).json({
            message: `ESP id ${id} update interval update failed`
        });
    }
});

router.get('/all', /*protect, allowRoles(['admin']),*/ async (req, res) => {
    const esps = await ESP32.findAll();
    res.status(200).json({
        esps
    });
});

router.get('/allfree', /*protect, allowRoles(['admin']),*/ async (req, res) => {
    const esps = await ESP32.findAll({where: {user_id: null}});
    res.status(200).json({
        esps
    });
});

router.put('/assignuser', /*protect, allowRoles(['admin']),*/ async (req, res) => {
    const id = req.query.id;
    const {user_id} = req.body;

    if (!id) {
        res.status(401).json({message: 'ID not provided'});
        return;
    }
    const esp = await ESP32.findOne({where: { id: id }});
    if (!esp) {
        res.status(404).json({messasge: 'ESP not found'});
        return;
    }

    if (esp.user_id != null) {
        // await ESP32.update({user_id: null}, {where: { id: id }})
        esp.user_id = null;
        await esp.save();
    }

    // const response = await ESP32.update({user_id: user_id}, {where: { id: id }});
    esp.set({user_id: id});
    const response = await esp.save();

    if (response[0] == 1) {
        res.status(200).json({
            message: `User assigned sucessfully`
        });
    }
    // if the value is already the same in database, response will be [0] as well - will report as error
    else {
        res.status(400).json({
            message: `Operation falied`
        });
    }
    res.send("ok")
});

router.get('/myesps', protect, async (req, res) => {
    console.log('-----------')
    const esps = await ESP32.findAll({
        where: {user_id: req.user.id}
    });

    res.status(200).json({esps});
});



// ==================== helpers ====================

async function getOutputs(id) {
    const esp = await ESP32.findOne({
        attributes: ['outputs'],
        where: { id: id }
    });

    const outputs = []
    for (let i = 0; i < 16; i++) {
        outputs.push(bitAtPosition(esp.outputs, i))
    }
    return outputs;
}

function bitAtPosition (value, index){
    return (0!=(value&(2**index)));
}

function flipBitAtPosition (value, index){
    return value^(2**index);
}

module.exports = router;