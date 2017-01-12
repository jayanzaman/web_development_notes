$(document).ready(function() {
    console.log("working");

    var getData = function(movieTitle) {

        var makeCall = $.ajax({
            url: "http://www.omdbapi.com/?t=" + movieTitle + "&r=json",
            dataType: 'json',
            success: function(data) {
                console.log(data);
                handleResponse(data);
            },

        });
    };

    var addAJAXFunction = function() {
        var $searchButton = $('button.u-full-width');
        $searchButton.on('click', function() {
            var $movieTitle = $('input.u-full-width').val();
            getData($movieTitle);
        });
    };
    addAJAXFunction();

    var appendMovie = function(name, imagePath) {
        $('h5').text(name);
        $('img').attr('src', imagePath);
    };

    var handleResponse = function(data) {
        var movieName = data.Title;
        var imagePath = data.Poster;
        console.log("movie name " + movieName);
        console.log("poster " + imagePath);
        appendMovie(movieName, imagePath);

    };

}); // ends doc.ready
