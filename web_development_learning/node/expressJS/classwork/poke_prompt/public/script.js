$(document).ready(function() {

    // add an event listener to the blue button next to the input box.
    // when you click it, it should make an ajax call to the api route we just made.
    // it will get the value from the input box, and request that id pokemon.
    // when the ajax call is successful, you should be returned the name of the pokemon
    // as a string.


    // with the response data we want to do the following:

    // 1. insert the pokemon into the img tag on the left side.
    //    the pokemon's url to it's image will be 'img/pokedex/pokemon/name.jpg'
    // 2. append the name to the info-screen div.

    // 3. make an ajax call to the poke api requesting more data regarding this pokemon.
    //    the 2nd ajax call will return info for this specific pokemon. we want to get
    //    the "TYPE" of this pokemon (fire, grass, ghost, etc.) We want to APPEND
    //    the type(s) of this pokemon to the string containing his name. It would be
    //    nice if it were presented like so:

    //    Poliwrath
    //    fighting
    //    water

    //    and not Poliwrath fighting water



    $('#blue-button-left').click(function() {
        console.log('hello');
        var pokeID = $('#nb').val();
        $.ajax({
            'url': 'http://localhost:3000/api/pokemon/' + pokeID,
            'method': 'GET',
            success: function(data) {
                console.log(data)
                $('#screen img').attr('src', 'img/pokedex/pokemon/' + data + '.jpg')
                $('#info-screen').text(data.toUpperCase());
            }
        })
    })

});
