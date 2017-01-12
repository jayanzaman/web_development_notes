var express = require("express");
var app = express();
var mustache = require("mustache-express");
var pgp = require("pg-promise")();

var db = pgp("postgres://jared@localhost:5432/realty_db");

app.engine("html", mustache());
app.set("view engine", "html");
app.set("views", __dirname + "/views");
app.use("/", express.static(__dirname + "/public"));

app.get("/", function(req, res) {
  res.render("index");
});


app.get("/buildings", function(req, res) {
  db.any("SELECT * FROM buildings").then(function(data) {
    res.render('buildings/index', {buildings: data});
  }).catch(function(error){
    console.log("ERROR", error);
    res.render("index");
  })
});

app.get("/buildings/:id", function(req, res){
  db.one("SElECT * FROM buildings WHERE id = $1", [req.params.id])
    .then(function(data){
      res.render('buildings/show', data);
    });
});

app.get("/buildings/:id/doormen", function(req, res){
  db.many("SELECT b.name bname, d.name dname, shift, experience, address, num_floors, d.id from doormen d JOIN buildings b ON b.id = d.building_id WHERE d.building_id = $1", [req.params.id])
    .then(function(data){
      res.render('buildings/doormen', {buildings:data[0],doormen:data});
    });
});

app.get("/buildings/:id/apartments", function(req, res){
  db.many("SELECT b.name bname, address, num_floors, a.name aname, floor, sqft, bedrooms, bathrooms, a.id from apartments a JOIN buildings b ON b.id = a.building_id WHERE a.building_id = $1", [req.params.id])
    .then(function(data){
      res.render('buildings/apartments', {buildings:data[0],apartments:data});
    });
});

app.get("/apartments", function(req, res) {
  db.any("SELECT * FROM apartments").then(function(data) {
    res.render('apartments/index', {apartments: data});
  }).catch(function(error){
    console.log("ERROR", error);
    res.render("index");
  })
});

app.get("/apartments/:id", function(req, res){
  db.one("SElECT * FROM apartments WHERE id = $1", [req.params.id])
    .then(function(data){
      res.render('apartments/show', data);
    });
});

app.get("/apartments/:id/tenants", function(req, res){
  db.many("SELECT a.name aname, floor, price, sqft, bedrooms, bathrooms, a.id, t.name tname, t.id, age, gender, apartment_id from tenants t JOIN apartments a ON a.id = t.apartment_id WHERE t.apartment_id = $1", [req.params.id])
    .then(function(data){
      res.render('apartments/tenants', {apartments:data[0],tenants:data});
    }).catch(function(error) {
      console.log("ERROR", error);
      res.render('index');
    });
});


app.get("/doormen", function(req, res) {
  db.any("SELECT * FROM doormen").then(function(data) {
    res.render('doormen/index', {doormen: data});
  }).catch(function(error){
    console.log("ERROR", error);
    res.render("index");
  })
});

app.get("/doormen/:id", function(req, res){
  db.one("SElECT * FROM doormen WHERE id = $1", [req.params.id])
    .then(function(data){
      res.render('doormen/show', data);
    });
});

app.get("/tenants", function(req, res) {
  db.any("SELECT * FROM tenants").then(function(data) {
    res.render('tenants/index', {tenants: data});
  }).catch(function(error){
    console.log("ERROR", error);
    res.render("index");
  })
});

app.get("/tenants/:id", function(req, res){
  db.one("SElECT * FROM tenants WHERE id = $1", [req.params.id])
    .then(function(data){
      res.render('tenants/show', data);
    }).catch(function(error){
      console.log("ERROR", error);
      res.render("index");
    });
});

app.listen(3000, function() {
  console.log("sup");
});
