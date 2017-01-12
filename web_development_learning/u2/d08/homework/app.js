/* An app will go here */
var express = require("express");
var app = express();
var port = process.env.PORT || 3000;
var pgp = require("pg-promise")();
var db = pgp("postgres://jayanzaman@localhost:5432/hogwarts_crud")
var mustache = require('mustache-express');
var methodOverride = require('method-override');
var bdPars = require('body-parser');
//configure.
app.engine('html', mustache());
app.set('view engine', 'html');
app.set('views', __dirname + '/views');
app.listen(port)
console.log("Server started on " + port);
app.use(express.static(__dirname + '/public'));
app.use(methodOverride('method'));
app.use(bdPars.urlencoded({
    extended: false
}));
app.use(bdPars.json());
//app functions
app.get('/', function(req, res) {
    res.render('home/index');
});
app.get("/students", function(req, res) {
    db.many("SELECT * FROM students").then(function(data) {
        res.render("students/index", {
            students: data
        });
        // console.log(data);
    })
});
app.get("/students/:id", function(req, res) {
    db.one("SELECT * FROM students WHERE id = $1", [req.params.id])
        .then(function(data) {
            res.render("students/show", {
                students: data
            });
            // console.log(data);
        })
});
app.get("/houses", function(req, res) {
    db.many("SELECT * FROM houses")
        .then(function(data) {
            res.render("houses/index", {
                houses: data
            });
            // console.log(data);
        })
});
app.get("/houses/:id", function(req, res) {
    db.many("SELECT * FROM students JOIN houses ON students.house_id = houses.id WHERE houses.id =$1", [req.params.id])
        .then(function(data) {
            res.render("houses/show", {
                house: data[0],
                students: data
            });
            console.log(data);
        })
});
