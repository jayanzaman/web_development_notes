$(document).ready(function() {
    var first_film_url = "http://swapi.co/api/films/1/";

    // Do AJAX calls here
    // var $newObj = $.ajax({
    //     url: "http://swapi.co/api/films/1/",
    //     method: "GET",
    //     success: function(r){
    // var xWing = r.starships[6];
    // console.log(xWing);
    //     }
    // });

    // $.get("http://swapi.co/api/films/1/", function(r) {
    //     var xWing = r.starships[6];
    //     console.log(xWing);
    //     $.get(xWing, function(r) {
    //         var pilots = r.pilots;
    //         console.log(pilots);
    //         // for(var i = 0; i <pilots.length; i++){
    //           // $.get(pilots[i], function(r){
    //             console.log(pilots[2])
    //             $.get(pilots[2], function(d){
    //               console.log(d);
    //               var container = $('#titles #titlecontent p');
    //               container.text(JSON.stringify(d));
    //             });
    //           // })
    //         // }
    //     })
    // });

    //AJAX with promises
    var data_logger = function(data) {
        console.log(data);
        var container = $('#titles #titlecontent p');
        container.text(JSON.stringify(data));
    }

    var initial_request = function() {
        return $.get(first_film_url)
    }
    var starShipRequest = function(data) {
        return $.get(data.starships[6])
    }
    var pilotsRequest = function(p) {
        return $.get(p.pilots[2])
    }

    initial_request()
        .then(starShipRequest)
        .then(pilotsRequest)
        .then(data_logger);




});
