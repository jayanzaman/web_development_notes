//Taylor Code 2
// PSEUDOCODE
// We are first going to set all four squares such that when you hover over them they turn red. Then, we are going to create a function which, when called, removes other event listeners from an object, adds new ones which make the hover green, and add an on click event listener to turn permanently green. Once this is done, we will also add functionality to this function to advance a counter forward each time it is clicked which corresponds to the order of the zoneArray, and finally to call the function again on itself. This way, we will successfully advance forward and re-classify squares with the right color functionality. When all four squares are clicked permanently green, we will display a congratulatory message.

console.log('u01d09 hw starter.js linked');

//code goes here
var zoneArray = ['zone-', 'zone-', 'zone-', 'zone-'];
function shuffler(x) {
  var a = [];
  while(a.length<x){
    var ans = Math.round(Math.random()*(x-1));
    if (a.indexOf(ans) === -1) {
      a.push(ans);
    }
  }
  return a;
}
var shuffled = shuffler(4);

for (var i = 0; i<4; i++) {
  zoneArray[i]+=(shuffled[i]+1)
}

var zones = document.querySelectorAll('.zone');
var counter = 0;

var redFlash = function() {
  var thisCatcher = this;
  this.classList.add('red');
  setTimeout(function() {thisCatcher.classList.remove('red')},1000)
}

var clear = function() {
  var sec = 0;
  zoneArray.forEach(function(x) {
    setTimeout(function() {document.getElementById(x).classList.remove('green')}, sec+=1000);
  })
}


var setter = function() {
  if(counter<4) {
    var zone = document.getElementById(zoneArray[counter]);
    zone.onclick = function() {
      this.classList.add('green');
      counter ++;
      setter();
    }
  } else {
    console.log("Whoa!! You did it!")
    alert("Wooooo!!!")
    clear();
  }
}

for (var i=0; i < zones.length; i++) {
  zones[i].onclick = redFlash;
}

setter();
