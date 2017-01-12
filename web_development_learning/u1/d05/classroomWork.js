var triangle = {a:1, b:2, c:3};

for ( var prop in triangle){

 console.log(triangle[prop]);

}

var Honda = {type:"Sedan", doors: 4, mpg: 25};

for (var info in Honda) {

 console.log(info + ":" + Honda[info]);
}

var numbers = [ 23, 45, 12, 34];

for (var i = 0; i < numbers.length; i++) {

  console.log(numbers[i].toString());
}

var counter = 0;

while (counter < 3){
 counter ++;
 console.log("not yet")
}
console.log("now it's " + counter);

var jsParadigms = {
  functional: "yes",
  objectOriental: "yes",
  procedural: "yes",
  classicalInheritance: "no"

}


for ( var prop in jsParadigms){

  console.log(jsParadigms[prop] + "!");

}

var letters = ["a", "b", "c"]

letters.forEach(function(letter){
  console.log(letter.toUpperCase());
})

var capitalize = function(letter){
  console.log(letter.toUpperCase());
}

letters.forEach(capitalize);


var instructors = [
  {name: "John", kind: "IL"},
  {name: "Jared", kind: "IA"}];

var newInst = instructors.map(function(el){
  el.school = "General Assembly";
  return el;
})

instructors

console.log(newInst)
console.log(instructors)
//.map won't change the size of an array but the content might be changed.
// However, in objects, .map can add new elements.

