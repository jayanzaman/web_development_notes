var express = require('express')
var app = express()

app.listen(3000, function() {
    console.log('app alive on 3000')
})

app.get('/', function(req, res) {
    res.send("Hello, its me.");
})
app.post('/test', function(req, res) {
    console.log('post successful')
})
app.get('/json_data', function(req, res) {
    var json_data = {
        "name": "john",
        "password": "12345"
    }
    return res.json(json_data)
})
pry = require('pryjs')
app.get('/user/:id', function(req, res) {
    eval(pry.it)
})
var mustacheExpress = require('mustache-express');
app.engine('html', mustacheExpress());

app.set('view engine', 'html');
app.set('views', __dirname + '/html');
app.use(express.static(__dirname + '/public'))

app.get('/pretty', function(req, res) {
    res.render('index', {
        name: "John",
        age: "31"
    })
})

app.get('/pretty/user/:id', function(req, res) {
    id = req.param.id
    res.render('example2', {
        id: id,
        arr: ['sample1', 'sample2', 'sample3'],
        students: [{
            name: 'Kevin',
            score: 100
        }, {
            name: 'Bryan',
            score: 80
        }, {
            name: 'Jared',
            score: 30
        }]
    })
})
