/* An app will go here */
var express = require("express");
var app = express();
var port = process.env.PORT || 8080;
var pgp = require("pg-promise")();
var db = pgp("postgres://jayanzaman@localhost:5432/beer_list")

var mustache = require('mustache-express');

//configure.
app.engine('html', mustache());
app.set('view engine', 'html');
app.set('views', __dirname + '/html');

app.listen(port)
console.log("Server started on " + port);

app.use(express.static(__dirname + '/public'));

// app.get("/", function(req, res) {
//     db.many("SELECT * FROM beers").then(function(data) {
//         console.log(data);
//     });
//     res.send("index");
// });


app.get("/", function(req, res) {
    db.many("SELECT * FROM beers").then(function(data) {
        var beer_data = {
            title: "X-files",
            beers: data
        };
        res.send("index", beer_data);
    });
});

app.post("/beers/:name/:category/:country/:alcohol/:price", function(req, res) {
    console.log(req.params);


})

// set up an api route for get "/beers'
app.get("/beers", function(req, res) {
    db.many("SELECT * FROM beers").then(function(data) {
        console.log(data);
        var json_data = {
            beers: data
        }
        res.json(json_data);
    });
});
// set up an api route for get "/beers/:id"
app.get("/beers/:id", function(req, res) {
    console.log("hit the beer id route");
    db.one("SELECT * FROM beers WHERE id = $1", [req.params.id])
        .then(function(data) {
            console.log(data);
            res.json(data);
        });
});
