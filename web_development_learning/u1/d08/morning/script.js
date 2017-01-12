// // anyonmous function
// var example = function() {
//   return "An anyonmous function";
// }

// // named function
// function anotherExample() {
//   return "This is a named function ";
// }

// // object literal
// var ron = {
//   fullName: "Ron Weasely",
// };

// // key-value pairs
// ron.fullName = "Ron Weasely";
// //ron = object, fullName = key, "Ron Weasley" = value

// // dot notation
// ron.school = "Hogwarts";

// // bracket notation
// ron["house"] = "Gryffindor";

// // object methods
// ron.greeting = function() {
//   alert("Hi, I am " + this.fullName);
// }

// ron.greeting();
//   => "Hi, I am Ron Weasely";


var harry = {};

harry.firstName = "Harold";
harry.lastName = "Kumar";
harry.age = 35;
harry.hobbies = ["guitar", "soccer", "astrophysics", "hello kitty"];

var printName = function(){
  console.log(this.firstName+" "+this.lastName);
}
harry.printName = printName;
// harry.printName();

var allHobbies = function() {
  // for (var hob in this.hobbies){
    var allHobbiesTogether = this.hobbies.join(', ');
    return allHobbiesTogether;
  // }
}
harry.allHobbies = allHobbies;
harry.allHobbies();

var printData = function() {
  console.log("Hi, I'm "+this.firstName+" "+this.lastName+" and my hobbies are "+this.allHobbies());
}

harry.printData = printData;
harry.printData();

var updateData = function(){
  var inputKey = prompt("Which data set would you like to update? Your options are ");
  var inputValue = prompt("What would you like to change it to?");

  alert("Okay we will change "+inputKey+" to "+inputValue);
  this.inputKey = inputValue;
  alert("The value of "+this.inputKey+" is now "+this.inputKey.value)
}
harry.updateData = updateData;
harry.updateData();
console.log(harry.firstName);//Why isn't my console returning the inputValue?






















