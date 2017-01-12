console.log('U01D07 starter.js is connected!');

// DO WORK IN ANY ORDER YOU'D LIKE BELOW, BUT REMEMBER TO HAVE MEANINGFUL VARIABLE NAMES AND CONSOLE.LOG STATEMENTS
var suits = ["S", "H", "D", "C"];
var values = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"];
var fullDeck = [];

var cards = function(){
    for(var i=0; i < suits.length; i++){
      for(var j=0; j < values.length; j++){
          fullDeck.push(suits[i]+values[j]);
      }
    }
}
cards();
console.log(fullDeck);

var cardValue = function(card){

  var numValue = parseInt(card.charAt(1),10);
  var numV = Number.isInteger(numValue);
  if(numV === true){
    // console.log("Value of the "+card+" is "+numValue);
    return numValue;
  }
  else {
          if (card.charAt(1) === 'A'){
              // console.log("Value of "+card+" is 11");
              return 11;
        }
        else if (card.charAt(1) === 'K'){
              // console.log("Value of "+card+" is 10");
              return 10;
        }
        else if (card.charAt(1) ===  'Q'){
              // console.log("Value of "+card+" is 10");
              return 10;
        }
        else if (card.charAt(1) === 'J'){
              // console.log("Value of "+card+" is 10");
              return 10;
        }
        else {
              console.log("You got some crazy card, man.")
        }
  }
}


var randomCards = function(){
  var randomCardValue = Math.floor(Math.random() * fullDeck.length);
  var randomCard1 = fullDeck[randomCardValue];
  // var randomCardValue = Math.floor(Math.random() * fullDeck.length);
  // var randomCard2 = fullDeck[randomCardValue];
  // console.log(randomCard1+" , "+randomCard2);
  return randomCard1;
}
randomCards();

var cardValueOfTwo = function(card1, card2){
  console.log("First card's value is "+cardValue(card1));
  console.log("Second card's value is "+cardValue(card2));
}
var cardOne = randomCards();
var cardTwo = randomCards();

cardValueOfTwo(cardOne,cardTwo);


