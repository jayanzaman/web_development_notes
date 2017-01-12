jQuery(function() {

  // var body = $('body');

  // // 1. Creates a <div> with the class "duck" named "duck"
  // var duck = $('<div class="duck"></div>');
  // body.append(duck);

  // // 2. Toggles the "flap" class on the duck every 250 ms (1/4 second)
  // setInterval(function() {
  //   duck.toggleClass('flap');
  // }, 250)

  // // 3. Moves the duck using CSS "top" and "left"
  // duck.css("top", 250);
  // duck.css("left", 250);

  // // 4. Moves the duck to a different location after 1 second
  // setTimeout(function() {
  //   duck.css("left", 500);
  // }, 1000)

  // 5. ------ Here we go! ------

  // 6. Things are getting a bit messy. Let's create
  //    a "function" called createDuck() that does everything in 1-4
  //    and "returns" the duck object
  var createDuck = function(){
        var body = $('body');

        var duck = $('<div class="duck"></div>');
        body.append(duck);

        setInterval(function() {
          duck.toggleClass('flap');
        }, 250)

        var top = Math.random() * (window.innerHeight);
        var left = Math.random() * (window.innerWidth);
        duck.css("top", top);
        duck.css("left", left);

        var interval = Math.random() * (1000-100) + 100;

        setInterval(function() {
            duck.css('top', Math.random() * window.innerHeight);
            duck.css('left', Math.random() * window.innerWidth);
        }, interval)
    return duck;
  }
  createDuck();


  // 7. Now, let's create lots of ducks!  Use a "for" loop to create 5 ducks
  //    using our fancy new createDuck() function
  for(var i= 1; i <5; i++){
    createDuck();
  };

  // 8a. Uh oh, our ducks are overlapping.  Modify createDuck so each time
  //    it creates a duck, it appears in a random location
  // 8b. The ducks should also move to a random location after 1 second
  // HINT: Use Math.random() * window.innerWidth    for "left"
  //       And Math.random() * window.innerHeight   for "top"

  // 9. Our ducks are going to be easy targets if they only move once.
  //    Modify createDuck() so the ducks keep moving around

  // 10. Well Done!

})
