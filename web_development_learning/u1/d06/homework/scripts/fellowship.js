console.log("Linked.");

// Our heros
var hobbits = [
  'Frodo Baggins',
  'Samwise \'Sam\' Gamgee',
  'Meriadoc \'Merry\' Brandybuck',
  'Peregrin \'Pippin\' Took'
];

// Their compatriots
var buddies = [
  'Gandalf the Grey',
  'Legolas',
  'Gimli',
  'Strider',
  'Boromir'
];


// Their journey
var lands = ['The Shire', 'Rivendell', 'Mordor'];

// An example of using query selector
var body = document.querySelector('body');

//Part 1


var makeMiddleEarth = function(){
  // create a section tag with an id of middle-earth
  body.innerHTML += "<section id='middle-earth'></section>"
  // add each land as an article tag
  var section = document.getElementById('middle-earth');
  for(var i = 0; i < lands.length; i++){
    section.innerHTML += "<article id="+lands[i]+"><h1>" + lands[i] + "</h1></article>"
  }
  // inside each article tag include an h1 with the name of each land
  // append middle-earth to your document body
}

//Part 2


makeMiddleEarth();

var makeHobbits = function(){
  // display an unordered list of hobbits in the shire (which is the second article tag on the page)
  document.querySelector('article:first-of-type').innerHTML += "<ul class='hobbit'></ul>";

  var middleEarth = document.querySelector("ul")
  for(var j = 0; j < hobbits.length; j++){
    middleEarth.innerHTML += "<li id="+hobbits[j]+">" + hobbits[j] + "</li>";
  }
  // give each hobbit a class of hobbit
}
makeHobbits();

//Part 3


var keepItSecretKeepItSafe = function(){
  // create a div with an id of 'the-ring'
  // give the div a class of 'magic-imbued-jewelry'
  // add the ring as a child of Frodo
  var locateFrodo = document.querySelector('li:first-of-type');
  locateFrodo.innerHTML += "<div class='magic-imbued-jewelry' id='the-ring'></div>";
    // var locateFrodo = document.querySelector("li");

}
keepItSecretKeepItSafe();

//Part 4


var makeBuddies = function(){
  // create an aside tag
  // attach an unordered list of the 'buddies' in the aside
  // insert your aside as a child element of rivendell

  var locateRivendell = document.getElementById('Rivendell');
  locateRivendell.innerHTML += "<aside><ul id='riv'></ul></aside>";
  var enterRivendell = document.getElementById('riv');
  for(var k=0; k < buddies.length; k++){
      enterRivendell.innerHTML += "<li id="+buddies[k]+">"+buddies[k]+"</li>";
  }
}
makeBuddies();


// Part 5


var beautifulStranger = function(){
  // change the 'Strider' textnode to 'Aragorn'
  var locateStrider = document.getElementById('Strider');
  locateStrider.innerText = "Aragorn";
}
beautifulStranger();

//Bonus
//Part 6

var leaveTheShire = function(){
  // assemble the hobbits and move them to Rivendell
  // var theShire = document.querySelectorAll('article')[0];
  var hobbitsInShire = document.querySelector('#middle-earth article ul');
  //
  document.querySelector('#middle-earth article:nth-child(2)').appendChild(hobbitsInShire);
  // while (hobbitsInShire) {
  //   hobbitsInShire.removeChild(hobbitsInShire);
  // }
}
leaveTheShire();

//Part 7

var forgeTheFellowShip = function(){
  // create a new div called 'the-fellowship' within rivendell
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
  var theFellowShip = document.querySelector('#middle-earth article:nth-child(2)');
  theFellowShip.innerHTML += "<div id='the-fellowship'></div>";
  var addBuddiesToTheFellowship = document.querySelector('#middle-earth article:nth-child(2) aside');
  document.getElementById("the-fellowship").appendChild(addBuddiesToTheFellowship);
  var addHobbitsToTheFellowship = document.querySelector('#middle-earth article:nth-child(2) ul');
  document.getElementById("the-fellowship").appendChild(addHobbitsToTheFellowship);
  for (var f = 0; f<buddies.length; f++){
    alert(buddies[f]+" was added to the Fellowship.")
  }
  for(f=0; f<hobbits.length; f++){
    alert(hobbits[f]+" was added to the Fellowship.");
  }
}
forgeTheFellowShip();

//Part 9

// var hornOfGondor = function(){
//   // pop up an alert that the horn of gondor has been blown
//   // Boromir's been killed by the Uruk-hai!
//   // put a linethrough on boromir's name
//   // Remove Boromir from the Fellowship
//   alert("The horn of gondor has been blown and Boromir's been killed by the Uruk-hai!");
//   // var deadBoromir = document.getElementById("Boromir");
//   // document.querySelector('#middle-earth article:nth-child(2) div aside ul li:nth-child(5)').style.text-decoration = "line-through";
//   document.getElementById('Boromir').style.text-decoration = "line-through";

// }
// hornOfGondor();
























