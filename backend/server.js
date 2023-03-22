const express = require('express');
const path = require('path');
const dotenv = require('dotenv').config();
const bodyParser = require('body-parser');
const cors = require('cors');

const {sequelize, connectDB} = require('./config/db');
const { connect } = require('http2');
// const {errorHandler} = require('./middleware/errorMiddlewre');

const app = express();
const port = process.env.PORT || 5000;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors({origin: true}));

// test connection to database
connectDB();

app.listen(port, (err) => {
  if (err) console.log(err);
  console.log(`Server started on port ${port}`);
});