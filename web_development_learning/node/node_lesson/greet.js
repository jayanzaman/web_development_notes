var greetings = {};

greetings.sayHello = function(person) {
  console.log("Hello "  + person + "!");
}

greetings.sayGoodBye = function() {
  console.log("Good Bye");
}

module.exports = greetings;
