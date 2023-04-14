const express = require("express")
const path = require("path");
const ejsMate = require("ejs-mate");
const con = require("./connector.js")
const app = express()

// Ejs and Ejs-Mate Setup for Templating
app.engine("ejs", ejsMate);
app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));

app.get("/", (req, res) => {
    const sql = `select * from products`;
    con.query(sql,(err,result)=>{
        if(err) throw err;
        res.render("home",{result})
    })
})
app.get("/men",(req,res)=>{
    const sql = `select * from men`;
    const sql1 = `select category_id from men`
    let category = 0
    con.query(sql1,(err,result)=>{
        if (err) throw err;
        category = result[0]
    })
    con.query(sql, (err, result) => {
        if (err) throw err;
        res.render("category",{data : result,category});
    })
})
app.get("/women",(req,res)=>{
    const sql = `select * from women`;
    const sql1 = `select category_id from women`
    let category = 0
    con.query(sql1,(err,result)=>{
        if (err) throw err;
        category = result[0]
    })
    con.query(sql, (err, result) => {
        if (err) throw err;
        res.render("category",{data : result,category});
    })
})
app.get("/kids",(req,res)=>{
    const sql = `select * from kids`;
    const sql1 = `select category_id from kids`
    let category = 0
    con.query(sql1,(err,result)=>{
        if (err) throw err;
        category = result[0]
    })
    con.query(sql, (err, result) => {
        if (err) throw err;
        res.render("category",{data : result,category});
    })
})
app.get("/product/:id",(req,res)=>{
    const {id} = req.params
    const sql = `select * from products`
    con.query(sql,(err,result)=>{
        if(err) throw err;
        res.render("product",{result})
    })
})
app.listen(3000, () => {
    console.log("Server started on port 3000")
})