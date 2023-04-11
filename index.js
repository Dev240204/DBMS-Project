const express = require("express")
const app = express()
const con = require("./connector.js")

con.connect((err) => {
    // const sql = `desc brands`;
    // con.query(`CREATE TABLE brands (
    //     id INT PRIMARY KEY,
    //     name VARCHAR(50) NOT NULL,
    //     description TEXT
    //     )`, (err, result) => {
    //     if (err) throw err;
    // })
    // const sql = `select * from brands`;
    // if (err) throw err;
    // con.query(sql, (err, result) => {
    //     if (err) throw err;
    //     console.log(result);
    // })
})
app.get("/", (req, res) => {
    res.send("Hello World")
})
app.listen(3000, () => {
    console.log("Server started on port 3000")
})