$(document).ready(function() {
            console.log("loaded");
            var $body = $('body');

            // getResults function goes here
            var getResults = function(input) {
                    $('.item').remove();
                    var query = input;
                    var makeCall = $.ajax({
                            type: 'GET',
                            url: 'https://itunes.apple.com/search',
                            dataType: 'jsonp',
                            data: {
                                term: query,
                                media: "music",
                                entity: "album",
                                limit: 25
                            }
                        })
                        .done(function(data) {
                            console.log(data);
                            organizeData(data);
                            return data;
                        })
                }
                // Event Handlers go here
            var initializeSearchButton = function() {
                var $searchButton = $('#click-me');
                $searchButton.on('click', function() {
                    var $input = $('#itunes-search').val();
                    getResults($input);
                    event.preventDefault();
                })
            };
            initializeSearchButton();

            var organizeData = function(data) {
                result = data.results;
                $results = $('<ul>');
                var $item, $thumbnail, $description, $artist, $album, $price;
                result.forEach(function(el, index, arr) {
                        $item = $('<li>');
                        $thumbnail = $('<img>');
                        $description = $('<div>');
                        $artist = $('<p>');
                        $album = $('<p>');
                        $price = $('<p>');
                        $item.addClass('item');
                        $thumbnail.addClass('albumCover');
                        $artist.addClass('artist');
                        $album.addClass('album');
                        $price.addClass('price');
                        // $thumbnail.attr('src', result)
                    }
                };







            });
