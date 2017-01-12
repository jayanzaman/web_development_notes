/* An app will go here */
var express = require("express");
var app = express();
var port = process.env.PORT || 8080;
var pgp = require("pg-promise")();
var db = pgp("postgres://jayanzaman@localhost:5432/realestate")

var mustache = require('mustache-express');

//configure.
app.engine('html', mustache());
app.set('view engine', 'html');
app.set('views', __dirname + '/public');

app.listen(port)
console.log("Server started on " + port);

app.use(express.static(__dirname + '/public'));


app.get("/buildings", function(req, res) {
    db.many("SELECT * FROM buildings").then(function(data) {
        console.log({
            building: data
        });
        res.render('buildings/index', {
            buildings: data
        });
    }).catch(function(error) {
        res.render("index");
    })
});

app.get("/buildings/:id", function(req, res) {
    db.one("SELECT * FROM buildings WHERE id = $1", [req.params.id])
        .then(function(data) {
            var building = data;
            console.log(building);
            res.render('index', building);
        });
});
