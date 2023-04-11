const mysql = require("mysql");

const con = mysql.createConnection({
    host : "localhost",
    user : "DBMS",
    password : "",
});

module.exports = con;