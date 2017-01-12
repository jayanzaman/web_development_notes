console.log('u01d09 hw starter.js linked');
//pseudocode
// - Find the relevant elements
// - Check out the CSS and what we have to work with
// - Use three eventlisteners (mouseenter, mouseout & click) to manipulate the elements
// - eventlisteners should be deactivated after clicking
// - add a class "clicked" after clicking each square to turn green
// - when there are four clicked class in the documents, alert the user


//code goes here


var changeToGreen = function(el){
    el.classList.add('green');
  };

var changeToWhite = function(el){
    el.classList.remove('green');
  };
var leavingBox = function(el, itsGreen){
    if (itsGreen === false){
        el.addEventListener('mouseout', function(){
          changeToWhite(el);
        }, false);
      } else {
        el.removeEventListener('mouseout', function(){
          changeToWhite(el);
          }, false);
        };
  };
var mouseHover = function (el, grn) {
  console.log("inside mousehover "+grn);
    if(grn){
      leavingBox(el, grn)
      console.log("inside mousehover if "+grn);
    } else {
      el.addEventListener('mouseenter', function() {
        changeToGreen(el);
        // isItGreen = true;
        leavingBox(el, grn);
        console.log("inside mousehover else "+grn);
      });
    }
  };
var removeEvents = function (el){
    leavingBox(el) = function(){};
  };

var countSquares = function (){
    var count = document.getElementsByClassName('clicked').length;
    if (count === 4){
      alert("You've clicked 4 squares.")
    }
};

var mouseClick = function (el, itsGreen){

    el.addEventListener('click', function(){
      this.setAttribute('style', 'background-color: green');
      this.classList.add('clicked');
      countSquares();
      // var countGreenSquare = document.getElementsByClassName('clicked').length;
      // if(countGreenSquare = 4){
        // alert("You've clicked all four squares!")
      // }
    });
};

var zones = document.getElementsByClassName('zone');
console.log(zones);
var zoneArray = [];
var isItGreen = false;
var settingUp = function(){
    for(var i=0; i<zones.length; i++){
      zones[i].zoneGreen = isItGreen;
      mouseClick(zones[i], isItGreen);
      mouseHover(zones[i], isItGreen);
    };
};
settingUp();
















