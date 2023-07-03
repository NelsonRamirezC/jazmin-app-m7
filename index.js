import sequelize from "./app/database/database.js";
import app from "./app/app.js";

//importamos asociaciones
import "./app/models/asociaciones.js";

const main = async () => {
    try {
        await sequelize.authenticate();
        await sequelize.sync({ force: false, alter: true });
        let PORT = process.env.PORT || 3000;
        app.listen(PORT, () =>
            console.log("Servidor escuchando en puerto: " + PORT)
        );
    } catch (error) {
        console.log("Ha ocurrido un error: ", error);
    }
};

main();
