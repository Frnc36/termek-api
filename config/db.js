const mysql = require("mysql2");

const db = mysql.createConnection({
    host: "127.0.0.1",
    user: "root",
    password: "",
    database: "termekdb"
});

db.connect((err) => {
    if (err) {
        console.error("Hiba a csatlakozáskor:", err);
        return;
    }
    console.log("Csatlakozva az adatbázishoz!");
});

module.exports = db;