console.log('u01d09 hw starter.js linked');
//create a function to randomize the original array
//create a for loop to go through the new array and assign order
//only the next element in order will turn green when hovered
//only the next element will allow it to be clicked
//for all the other squares give the class red when hovered about them
//
//code goes here


var changeToGreen = function(el){
    el.classList.add('green');
  };

var changeToWhite = function(el){
    el.classList.remove('green');
  };

var changeToRed = function(el){

    el.addEventListener('mouseout', function(){
      changeFromRed(el);
    })
    el.classList.add('red');
}
var changeFromRed = function(el){
    el.classList.remove('red');
}

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

var hoverRed = function(el){
      el.addEventListener('mouseenter', function() {
        changeToRed(el);
      });
  };

var countSquares = function (){
    var count = document.getElementsByClassName('clicked').length;
    if (count === 4){
      alert("Congratulations! You've clicked all four squares.")
    }
};

var mouseClick = function (el, itsGreen){

    el.addEventListener('click', function(){
      this.setAttribute('style', 'background-color: green');
      this.classList.add('clicked');
      countSquares();
      nextUp ++;
      // turnRedno1 ++;
      // turnRedno2 ++;
      // turnRedno3 ++;
      startUp();
    });
};

var zones = ['zone-3', 'zone-2', 'zone-4', 'zone-1'];


var arrayRandomizer = function(arr){
  var tempIndex;
  var newIndex;
  var originalIndex = arr.length, tempIndex, newIndex;


  while ( 0 != originalIndex) {
    newIndex = Math.floor(Math.random() * originalIndex);
    originalIndex -= 1;
    //counting down because after each new index there's less element
    //swaping begins...
    tempIndex = arr[originalIndex];
    arr[originalIndex] = arr[newIndex];
    arr[newIndex] = tempIndex;
  }
  return arr;
}

var shuffledZones = arrayRandomizer(zones);

var firstSquare = document.getElementsByClassName(shuffledZones[0])
// var secondSquare =

var firstSquare, secondSquare, thirdSquare, fourthSquare;
var isItGreen = false;
var nextUp = 0;
var turnRedno1 = 1;
var turnRedno2 = 2;
var turnRedno3 = 3;
var startUp = function(){
    console.log("Original array: "+zones);
    console.log("Shuffled array: "+shuffledZones);
    var turnGreen = document.getElementById(shuffledZones[nextUp]);
    console.log(turnGreen);
    mouseHover(turnGreen, isItGreen);
    mouseClick(turnGreen, isItGreen);
    // turnRed   = document.getElementById(shuffledZones[turnRedno1]);
    // turnRed2  = document.getElementById(shuffledZones[turnRedno2]);
    // turnRed3  = document.getElementById(shuffledZones[turnRedno3]);
    // hoverRed(turnRed);
    // hoverRed(turnRed2);
    // hoverRed(turnRed3);

};
startUp();


















