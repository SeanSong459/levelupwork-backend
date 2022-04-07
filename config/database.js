const express = require("express");
const mysql = require("mysql2");
const dotenv = require("dotenv").config();

const app = express();

const connection = mysql.createConnection({
  host: process.env.HOST,
  database: process.env.DATABASE,
  user: process.env.USER,
  password: process.env.PASSWORD,
});
