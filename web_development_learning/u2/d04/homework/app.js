var http = require("http");
var fs = require("fs");

var getHTML = function(res) {
    res.writeHead(200, {
        "Content-type": "text/html"
    });
    var html = fs.readFileSync(__dirname + "/public/index.html");
    res.end(html);
}

var getCSS = function(res) {
    res.writeHead(200, {
        "Content-type": "text/css"
    });
    var css = fs.readFileSync(__dirname + "/public/style.css");
    res.end(css);
}
var getScript = function(res) {
    res.writeHead(200, {
        "Content-type": "text/js"
    });
    var js = fs.readFileSync(__dirname + "/script.js");
    res.end(js);
}
var getJquery = function(res) {
    res.writeHead(200, {
        "Content-type": "text/js"
    });
    var js = fs.readFileSync(__dirname + "/jquery.js");
    res.end(js);
}
var server = http.createServer(function(req, res) {
    if (req.url === "/style.css") {
        getCSS(res);
    } else if (req.url === "/") {
        getHTML(res);
    } else if (req.url === "/script.js") {
        getScript(res);
    } else if (req.url === "/jquery.js") {
        getJquery(res);
    }
});

var port = 8080;
server.listen(port);
console.log("listening on port ", port);
