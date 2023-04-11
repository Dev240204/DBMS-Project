const express = require("express")
const app = express()
const con = require("./connector.js")

con.connect((err) => {
    if (err) throw err;
    console.log("Connected to database")
})

app.get("/", (req, res) => {
    res.send("Hello World!")
})

app.get("/users", (req, res) => {
    con.query("SELECT * FROM users", (err, result) => {
        if (err) throw err;
        res.send(result)
    })
})

app.listen(3000, () => {
    console.log("Server started on port 3000")
})