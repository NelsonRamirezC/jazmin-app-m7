import Sequelize from "sequelize";
import dotenv from "dotenv";
import pg from "pg";
dotenv.config();

let database, user, password, host;

database = process.env.DB_DATABASE;
user = process.env.DB_USER;
password = process.env.DB_PASSWORD;
host = process.env.DB_HOST;

const sequelize = new Sequelize(database, user, password, {
    host: host,
    dialect: "postgres",
    port: process.env.DB_PORT,
    pool: {
        max: 5,
        min: 0,
        acquire: 10000,
        idle: 10000,
    },
    dialectOptions: {
        ssl: {
            require: true,
            rejectUnauthorized: false,
        },
    },
    dialectModule: pg,
});

export default sequelize;
