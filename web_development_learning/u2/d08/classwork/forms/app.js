/* An app will go here */
var express = require("express");
var app = express();
var port = process.env.PORT || 8080;
var pgp = require("pg-promise")();
var db = pgp("postgres://jayanzaman@localhost:5432/users")
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

app.get("/users", function(req, res) {
    db.many("SELECT * FROM users").then(function(data) {
        res.render("index", {
            users: data
        });
        console.log(data);
    }).catch(function(error) {
        console.log("Error", error);
        res.render("index");
    })
});

app.get("/users/:id", function(req, res) {
    db.one("SELECT * FROM users WHERE id = $1", [req.params.id])
        .then(function(data) {
            res.render("single", {
                users: data
            });
        }).catch(function(error) {
            console.log("Error", error);
            res.render("single");
        })
});
app.delete('users/:id', function(req, res) {
    var id = req.params.id;
    db.none("DELETE FROM users WHERE id = $1", [id])
        .then(function(data) {
            res.redirect("/users");
        }).catch(function(error) {
            console.log("Error", error);
            res.render("index");
        })
})
app.get('/create', function(req, res) {
    res.render('create');
})

app.post('/users', function(req, res) {
    var name = req.params.name;
    var email = req.params.email;
    var password = req.params.email;
    db.none("INSERT INTO users (name, email, password) VALUES ($1, $2, $3)", [name, email, password])
        .then(function() {
            res.render("index");
        }).catch(function(error) {
            console.log("Error", error);
            res.render("create");
        })
})
