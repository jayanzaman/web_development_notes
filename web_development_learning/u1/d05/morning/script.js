

var response = function(statement){
    return statement.toUpperCase();
}

var input = prompt("write your name");

alert(response(input));


str = "303 + 404";

console.log(str.split(" ", 3));


var expression = prompt("Enter an expression here");

var intoArray = expression.split(" ", 3)

console.log(intoArray);

var numOne = intoArray[0];
var numTwo = intoArray[2];
var operator = intoArray [1];

console.log(numOne, numTwo, operator);

var domeSomeMath = function(numOne, numTwo, operator){

  if operator === "+" {
      return (numOne + numTwo);
  }
  else if operator === "-" {
      return (numOne - numTwo);

  }
  else if operator === "/" {

      return (numOne / numTwo);
  }
  else operator === "*" {

      return (numOne / numTwo);
  }
}

doCoolMath(2, 3, "+") {
    if operator === "+" {
      return (numOne + numTwo);
  }
  else if operator === "-" {
      return (numOne - numTwo);

  }
  else if operator === "/" {

      return (numOne / numTwo);
  }
  else operator === "*" {

      return (numOne / numTwo);
  }

}


alert(domeSomeMath(expression));
