console.log("followship.js loaded");
"use strict";

// 1
// An example of using setTimeout to call makeMiddleEarth after 2 seconds.
setTimeout(makeMiddleEarth, 2000)

var lands = ['The Shire', 'Rivendell', 'Mordor'];

var makeMiddleEarth = function() {
  // Create a section tag with an id of middle-earth
  var $body = $('body');
  var $middleEarthSection = $('<section id="middle-earth"></section>');
  for(var prop in lands){
    $middleEarthSection.append('<article class="land"><h1>'+lands[prop]+'</h1></article>');
  }
  $body.append($middleEarthSection);
  setTimeout(makeHobbits, 2000)
}

// setTimeout(makeHobbits(), 2000)

// 2

var makeHobbits = function() {
  // Create a ul with an id of "hobbits"
  var $hobbitList = $('<ul id="hobbits"></ul>');
  // Create li tags for each Hobbit in the hobbits array in characters.js
  // Give each li tag a class of "hobbit"
  // Set the text of each li.hobbit to one of the Hobbits in the array
  for(var hob in hobbits){
    $hobbitList.append('<li class="hobbit">'+hobbits[hob]+'</li>');
  }
  $('article.land').first().append($hobbitList);
  // Append the ul#hobbits to the article.land representing "The Shire"
  // (the first article tag on the page)
  setTimeout(keepItSecretKeepItSafe, 2000);
}
// makeHobbits();
// 3

var keepItSecretKeepItSafe = function() {
  // Create a div with an id of 'the-ring'
  var $giveRing = $('<div id="the-ring"></div>');
  // Give div#the-ring a class of 'magic-imbued-jewelry'
  $giveRing.addClass('magic-imbued-jewelry');
  // Add an event listener so that when a user clicks on the ring,
   $giveRing.click(nazgulScreech);
  // The nazgulScreech function (provided in index.html) is invoked
  // look up .click() - https://api.jquery.com/click/ in the jQuery docs to see how this works
  // it'll look like target.click(nazgulScreech)
  // bit of a freebie since we're not covering events until tomorrow
  // Add div#the-ring as a child element of the li.hobbit representing "Frodo"
  $('li.hobbit').first().append($giveRing);
  // Use setTimeout to delay the execution of the next function
  setTimeout(makeBuddies, 1000);
}
// keepItSecretKeepItSafe();
// 4

var makeBuddies = function() {
  // Create an aside tag
  var $buddiesAside = $('<aside></aside>');
  // Create a ul tag with an id of "buddies" and append it to the aside tag
  var $listOfBuddies = $('<ul id="buddies"></ul>');
      $buddiesAside.append($listOfBuddies);
  // Create li tags for each buddy in the buddies array in characters.js
  for(var bud in buddies){
    $listOfBuddies.append('<li class="buddy">'+buddies[bud]+'</li>');
  }
  // give each li tag a class of "buddy" and append them to "ul#buddies"
  // Insert the aside tag as a child element of the section.land representing "Rivendell"
  $('article.land').eq(1).append($buddiesAside);
  // Use setTimeout to delay the execution of the next function
  setTimeout(beautifulStranger, 1000);
}
// makeBuddies();
// 5

var beautifulStranger = function() {
  // Find the li.buddy representing "Strider"
  $("li:contains('Strider')").css("color", "green");
  // Change the "Strider" textnode to "Aragorn" and make its text green
  // Use setTimeout to delay the execution of the next function
  setTimeout(leaveTheShire, 2000);
}
// beautifulStranger();
// 6

var leaveTheShire = function() {
  // Assemble the Hobbits and move them to Rivendell
  var $moveToRivendell = $('article.land:nth-child(2) aside');
  $moveToRivendell.after($('ul#hobbits'));
  // Use setTimeout to delay the execution of the next function
  setTimeout(forgeTheFellowShip, 1000);
}
// leaveTheShire();
// 7

var forgeTheFellowShip = function() {
  // Create a div with an id of 'the-fellowship' within the section.land for "Rivendell"
  var $theFellowShipBuild = $('<div id="the-fellowship"></div>');
  $('article.land:nth-child(2)').append($theFellowShipBuild);
  // Add each hobbit and buddy one at a time to 'div#the-fellowship'
    $theFellowShipBuild.append($('li.buddy'));
    $theFellowShipBuild.append($('li.hobbit'));
    $('article.land:nth-child(2) li').each(function(){
      alert(this.textContent+" has joined the party")
    });

    // $theFellowShipBuild.each(function(){
    //   alert(this.textContent+" has joined the party")
    // })
    // for(var member in $theFellowShipBuild){
    //   console.log($theFellowShipBuild[member]);
    // }
  // After each character is added make an alert that they have joined your party
  // Use setTimeout to delay the execution of the next function by several seconds
  setTimeout(theBalrog, 1000);
}
// forgeTheFellowShip();
// 8

var theBalrog = function() {
  // Select the "li.buddy" for "Gandalf"
  var $gandalfTheWhite = $('li.buddy').first()
  // And change its textNode to "Gandalf the White"
  $gandalfTheWhite.text("Gandalf the White");
  // Apply style to the element, adding a "3px solid white" border to it
  $gandalfTheWhite.css("border", "3px solid white");
  // Use setTimeout to delay the execution of the next function
  setTimeout(hornOfGondor, 1000);
}
// 9

// Boromir's been killed by the Uruk-hai!
var hornOfGondor = function() {
  // Pop up an alert that the Horn of Gondor has been blown
  alert("The Hord of Gondor has been blown");
  // Put a line-through on Boromir's name
  $('li.buddy').last().css("text-decoration", "line-through");
  // And fade Boromir's opacity to 0.3 (he lives on in spirit)
  $('li.buddy').last().css("opacity", "0.3");
  // Use setTimeout to delay the execution of the next function
  setTimeout(itsDangerousToGoAlone, 1000);
}
// 10

var itsDangerousToGoAlone = function(){
  // Take Frodo and Sam out of The Fellowship and move them to Mordor
  $('article.land:nth-child(3)').append($('li.hobbit').first());
  $('article.land:nth-child(3)').append($('li.hobbit').first());
  // Add a div with an id of 'mount-doom' to Mordor
  var $mountDoomNears = $('<div id="mount-doom"></div>');
  $('article.land:nth-child(3)').append($mountDoomNears);
  // Use setTimeout to delay the execution of the next function
  setTimeout(weWantsIt, 1000);
}
// 11

var weWantsIt = function() {
  // Create a div with an id of 'gollum' and add it to Mordor
  var $gollumIsHere = $('<div id="gollum"></div>');
  $('article.land:nth-child(3)').append($gollumIsHere);
  // Remove The Ring from Frodo and give it to Gollum
  $gollumIsHere.append($('#the-ring'));
  // Move Gollum into Mount Doom
  $('#mount-doom').append($gollumIsHere);
  // Use setTimeout to delay the execution of the next function
  setTimeout(thereAndBackAgain, 1000);
}
// 12

var thereAndBackAgain = function() {
  // Remove Gollum and the Ring from the document
  $('#gollum').remove();
  // Move all the hobbits back to The Shire
  $('article.land:nth-child(1)').append($('.hobbit'));
  // Add the class "collapse" to Mordor
  $('article.land:nth-child(3)').addClass("collapse");
}

makeMiddleEarth();
