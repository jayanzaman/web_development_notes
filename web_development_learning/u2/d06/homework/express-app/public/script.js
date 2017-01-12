$(document).ready(function() {

    var $body = $('body');

    $.ajax({
        'url': 'http://localhost:8080/api/npmPackages',
        'method': 'GET',
        success: function(data) {
            console.log(data);
            var $title = data.title;
            var $titleHeading = $('<h1>').text($title);
            $body.append($titleHeading);
            var $text = data.text;
            var $textHeading = $('<h3>').text($text);
            $body.append($textHeading);
            var packages = data.packages;
            packages.forEach(function(el) {
                var category = el.category;
                var name = el.name;
                var img = el.img;
                var $div = $('<div>');
                var $category = $('<h5>').text(category);
                var $name = $('<p>').text(name);
                var $img = $('<img>').attr('src', img);
                $body.append($div);
                $div.append($category);
                $div.append($name);
                $div.append($img);
            })
        }

    })


});
