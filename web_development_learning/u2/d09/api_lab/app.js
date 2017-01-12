/* An app will go here */
var express = require("express");
var app = express();
var port = process.env.PORT || 8080;
var pgp = require("pg-promise")();
var db = pgp("postgres://jayanzaman@localhost:5432/planatary_zoology")
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
    res.render('index')
})
app.get('/species', function(req, res) {
    db.many("SELECT * FROM creatures").then(function(data) {

        res.render('species/index', {
            species: data
        });
    })
});
app.get('/species/:id', function(req, res) {
    db.one("SELECT * FROM creatures WHERE id = $1", [req.params.id])
        .then(function(data) {
            res.render('species/show', {
                species: data
            });
            console.log(data)
        })
});
app.get('/planets/:planet', function(req, res) {
    db.many("SELECT * FROM creatures WHERE planet = $1", [req.params.planet])
        .then(function(data) {
            res.render('planets/show', {
                species: data
            });
            console.log(data)
        })
});
app.get('/planets', function(req, res) {
    db.many("SELECT * FROM creatures").then(function(data) {

        res.render('planets/index', {
            species: data
        });
    })
});
app.get('/create', function(req, res) {
    res.render('species/create')
});

app.post('/species', function(req, res) {
    var species = req.body;
    db.none('INSERT INTO creatures (species, family, habitat, diet, planet) VALUES ($1,$2,$3,$4,$5)', [species.species, species.family, species.habitat, species.diet, species.planet])
        .then(function(data) {
            res.render('index')
        })
});
app.delete('/species/:id', function(req, res) {
    id = req.params.id
    db.none("DELETE FROM creatures WHERE id=$1", [id])
    res.render('species/index')
})
