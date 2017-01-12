$(document).ready(function() {

    console.log('loaded')
    var $textStuff = $('.colorChange');

    $textStuff.on('click', function() {
        var $novelText = $('<p>This is nice</p>');
        $textStuff.append($novelText);
    });

    $textStuff.hover(function() {
        $(this).addClass('blue');
    });






}); // end of script file
