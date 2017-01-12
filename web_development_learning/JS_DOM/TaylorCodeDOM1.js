//Taylor Code

// PSEUDOCODE
// Select all of the squares, and then iterate through the list of them, assigning various event listeners as we go. The listeners should function, such that when a square is hovered over with the mouse it turns green, when the mouse leaves the square it goes back to its original color, and when the square is click it stays permanent green. Finally, when all four squares are clicked permanently green, the user should be notified in the console.

console.log('u01d09 hw starter.js linked');

//code goes here
var zones = document.querySelectorAll('.zone');

var turnYellow = function () {
  for(var i = 0; i < zones.length; i++){
    zones[i].setAttribute('style','background-color: yellow');
    zones[i].classList.remove('green');
  }
}
var turnRed = function () {
  for(var i = 0; i < zones.length; i++){
    zones[i].setAttribute('style','background-color: red');
  }
}
var turnBack = function () {
  for(var i = 0; i < zones.length; i++){
    zones[i].removeAttribute('style');
  }
}

for (var i =0; i < zones.length; i++) {
  zones[i].onmouseenter = function() {
    this.classList.add('green');
  }
  zones[i].onmouseout = function() {
    this.classList.remove('green');
  }
  zones[i].onclick = function() {
    this.classList.add('green');
    this.onmouseenter = function() {};
    this.onmouseout = function() {};
    if (document.querySelectorAll('.green').length === 4) {
      console.log("Holy Crap!! You made all of the squares green!")
      setTimeout(turnYellow,1000);
      setTimeout(turnRed,2000);
      setTimeout(turnBack,3000);
    }
  }
}
