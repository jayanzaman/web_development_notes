$(document).ready(function() {
    console.log('script loaded');

    // json data
    var data = {
            "people": [{
                "name": "Luke Skywalker",
                "height": "172",
                "mass": "77",
                "hair_color": "blond",
                "skin_color": "fair",
                "eye_color": "blue",
                "birth_year": "19BBY",
                "gender": "male"
            }, {
                "name": "C-3PO",
                "height": "167",
                "mass": "75",
                "hair_color": "n/a",
                "skin_color": "gold",
                "eye_color": "yellow",
                "birth_year": "112BBY",
                "gender": "oh my"
            }, {
                "name": "R2-D2",
                "height": "96",
                "mass": "32",
                "hair_color": "n/a",
                "skin_color": "white, blue",
                "eye_color": "red",
                "birth_year": "33BBY",
                "gender": "beep boop"
            }, {
                "name": "Darth Vader",
                "height": "202",
                "mass": "136",
                "hair_color": "none",
                "skin_color": "white",
                "eye_color": "yellow",
                "birth_year": "41.9BBY",
                "gender": "male"
            }, {
                "name": "Leia Organa",
                "height": "150",
                "mass": "49",
                "hair_color": "brown",
                "skin_color": "light",
                "eye_color": "brown",
                "birth_year": "19BBY",
                "gender": "female"
            }]
        } // ends var data


    // your work here

    var logNames = function() {
        for (var key in data) {
            var obj = data[key];
            // console.log(obj);
            for (var i = 0; i < obj.length; i++) {
                console.log(obj[i].name);
            };
        };
    };


    var logNameEyes = function() {
        for (var key in data) {
            var obj = data[key];
            // console.log(obj);
            for (var i = 0; i < obj.length; i++) {
                console.log(obj[i].name + " has " + obj[i].eye_color + " eyes.");
            };
        };
    };
    // logNameEyes();

    var logByMass = function() {
        // for (var key in data) {
        //     var obj = data[key];
        //     for (var i = 0; i < obj.length; i++) {
        //         var mass = parseInt(obj[i].mass);
        //         if (mass >= 75) {
        //             console.log(obj[i].name + " has a mass of " + obj[i].mass);
        //         }

        //     };
        // };
        var heavies = data.people.filter(function(person) {
            if (person.mass > 75) {
                return person.name;
            }
        })
        console.log(heavies);
    };
    logByMass();

    // logByMass();
    var appendCharacterNames = function() {

        var $characters = $('#characters');
        for (var key in data) {
            var chars = data[key];
            for (var i = 0; i < chars.length; i++) {
                var charName = chars[i].name;
                var $addChar = $('<p>' + charName + '</p>');
                $characters.append($addChar);
            }
        }
    };
    // appendCharacterNames();
    var appendByMass = function() {
        $('#title').text("Mass > 75");
        var $characters = $('#characters');
        for (var key in data) {
            var obj = data[key];
            for (var i = 0; i < obj.length; i++) {
                var mass = parseInt(obj[i].mass);
                if (mass > 75) {
                    var $addName = $('<p>' + obj[i].name + '</p>')
                    $characters.append($addName);
                }

            };
        };
    };
    // appendByMass();




}); // ends document ready
