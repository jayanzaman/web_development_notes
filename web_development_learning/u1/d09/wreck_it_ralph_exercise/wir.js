"use strict";

(function(){
	$(document).ready(function(){
		// Hey XFiles!
		// --------------
		// Let's have some fun!

	  // I'll do some of the work for you, first I will grab the <body></body>
	  // and I'll create a <div> with the id of ralph.
	  var $body = $('body');
		var $ralph = $('<div id="ralph1"></div>');


	  // 1. Add the class "ralph" to this div. Append $ralph to the page.
	  $('body').append($ralph);
    $('div').addClass('ralph');



	  // 2. Create a .click function on ralph. When you click him, his ID Attribute
	  // should increment by one.
	  // i.e. ralph1 should become ralph2, ralph2 becomes ralph3 and so on...
	  // You'll might into an issue here. Maybe you should log the number you are
	  // incrementing and then look at the class names in the css file. (DEBUG IT!)

    var counter = 0;
var counterReset = function(){
    counter = 0;
    return counter;
}

    var $clickRalph = function(){
      $($ralph).click(function(){
        counter ++;
      $('.ralph').attr('id',"ralph"+counter);
        if($('#ralph11').length > 0){
          $clickRalph();
          counterReset();
          alert("Ralph is just kidding.")
        }
        if($('#ralph5').length > 0){
          $('body').append('<div id="speech1"></div>')
        }
        if($('#ralph6').length > 0){

          $('body').append('<div id="speech2"></div>')
        }
        if($('#ralph7').length > 0){
          $('#speech1').remove();
          $('#speech2').remove();
        }
    });
    };
    $clickRalph();

		// 3. There are 11 frames in the total animation. When #ralph11 (the last frame)
		// is displayed, restart the animation back to the first.




		// 4. When the counter hits the 5th frame (suprised), you should append a div with
		// the ID of 'speech1' to the page.



    // 5. On frame 6, reassign the ID attribute of the 'speech1' div to 'speech2'



    // 6. On frame 7, remove the speech div completely.



    // 7. On the last frame, add an alert letting the user know Ralph is just kidding!



		// 8. Congratulations!



		//Bonus: Open the image, explore other series of frames.
		// Create css rules and write more jQuery to create a new animation.

	})
})();
