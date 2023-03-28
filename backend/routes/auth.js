const express = require('express');
const router = express.Router();
const User = require('../models/User');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt');

router.post('/login', async (req, res) => {
  const {email, password} = req.body;

  if (!email | !password) {
    res.status(400).json({
      message: "Missing email and/or password"
    });
  }

  const user = await User.findOne({ 
    where: {email: email} 
  });

  if (!user) {
    res.status(400).json({
      message: "User not found. Please register first"
    });
    return;
  }

  const pass = await verifyPassword(password, user.password);

  if (!pass) {
    res.status(404).json({
      message: "Incorrect password"
    });
    return;
  }

  const token = generateToken(user.id);
  res.status(200).json({
    user,
    token,
    message: "Login sucessful"
  });
});

router.post('/register', async (req, res) => {
  const {name, surname, email, password} = req.body;

  if (!name | !surname | !email | !password) {
    res.status(401).json({
      message: "Some credentials are missing"
    });
    return;
  }

  const userExsists = await User.findOne({ 
    where: {email: email} 
  });

  if (userExsists) {
    res.status(404).json({
      message: "User already exsists"
    });
    return;
  }

  const salt = await bcrypt.genSalt(10);
  const hashed = await bcrypt.hash(password, salt);

  const user = await User.create({
    name: name,
    surname: surname,
    email: email,
    password: hashed,
    token: token
  });

  const token = generateToken(user.id);

  res.status(200).json({
    user,
    token
  });
});


const generateToken = (id) => {
  return jwt.sign(id, process.env.JWT_SECRET, {});
}

const verifyPassword = async (password, hash) => {
  return await bcrypt.compare(password, hash);
}

module.exports = router;