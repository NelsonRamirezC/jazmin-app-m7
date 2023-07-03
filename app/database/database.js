import Sequelize from "sequelize";
import dotenv from "dotenv";
dotenv.config();

let database, user, password, host;

database = process.env.DB_DATABASE;
user = process.env.DB_USER;
password = process.env.DB_PASSWORD;
host = process.env.DB_HOST;

const sequelize = new Sequelize(database, user, password, {
    host: host,
    dialect: "postgres",
});

export default sequelize;
