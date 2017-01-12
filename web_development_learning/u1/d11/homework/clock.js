$(function(){
	"use strict";
	/*
	** Declare variables here that use jQuery to grab
	** each of the clock hands
	*/

	var clock = function(){

		// Put all clock functonality in here
		// Your setInterval(s) should be in here
    var $minuteHand = $('#minute-hand');
    var $secondHand = $('#second-hand');
    var $hourHand = $('#hour-hand');

      var secondSync = new Date().getSeconds();
      var secDegrees = 6*secondSync;
        setInterval(function(){
          $secondHand.css('transform', 'rotate('+secDegrees+'deg)');
          $secondHand.css('transition-duration', '1s');
          $secondHand.css('transition-timing-function', 'linear');
          secDegrees+=6;
        }, 1000)
      var minuteSync = new Date().getMinutes();
      var minDegrees = 6*minuteSync;
        setInterval(function(){
          $minuteHand.css('transform', 'rotate('+minDegrees+'deg)');
          $minuteHand.css('transition-duration', '1s');
          $minuteHand.css('transition-timing-function', 'linear');
          minDegrees+=.001;
        }, 1000)
      var hourSync = new Date().getHours();
      var hourDegrees = 30*hourSync;
        setInterval(function(){
          $hourHand.css('transform', 'rotate('+hourDegrees+'deg)');
          $hourHand.css('transition-duration', '1s');
          $hourHand.css('transition-timing-function', 'linear');
          hourDegrees+=(30/3600000);
        }, 1000)

	};
    clock();
    console.log(new Date());


});
