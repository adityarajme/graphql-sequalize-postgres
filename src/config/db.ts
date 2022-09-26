import { builtinModules } from "module";

const { Sequelize } = require('sequelize');
require('dotenv').config();

console.log('Connection has been established successfully.');

const sequelize = new Sequelize(process.env.DB_NAME, process.env.DB_USER, process.env.DB_PASS, {
  host: process.env.DB_HOST,
  dialect: process.env.DIALECT
});

const DbCheck = async() => {
    try {
        await sequelize.authenticate();
        console.log('Connection has been established successfully.');
    } catch (error) {
        console.error('Unable to connect to the database:', error);
    }
}

export {sequelize, DbCheck}
  

//module.exports = sequelize;