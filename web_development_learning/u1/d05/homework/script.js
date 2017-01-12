console.log("script loaded");

// Fahrenheit to Celsius formula
// T(°C) = (T(°F) - 32) × 5/9

var Fahrenheit = prompt("Choose a Fahrenheit value for conversion to Celsius");
var Celsius;

function FtoC(f){
  var fTempVal = parseFloat(f);
  Celsius = (fTempVal - 32) * (5 /9);
  return parseInt(Celsius);

}
FtoC(Fahrenheit);
Celsius = Math.ceil(Celsius);
console.log(Celsius);
alert(Fahrenheit + " Fahrenheit is converted to " + Celsius + " Celsius");


// Pound (lbs) to kilogram (kg)
// 1 lb = 0.45359237 kg


var pound = prompt("Choose a pound (lbs) value to convert to kilogram (kg)")
var kg;

function lbsTOkg(lbs){
  var lbsTempVal = parseFloat(lbs);
  kg = (lbs * 0.45359237);
  return kg;
}
lbsTOkg(pound);
kg = parseFloat(kg).toFixed(3);
console.log(kg);
alert (pound + " lbs is converted to " + kg + " kilograms");

// Pythagorean theorem
// (a*a) + (b*b) = (c*c)

var Tri_length = prompt("What's the length of the right triangle?");
var Tri_width = prompt("What's the width of the right triangle?");
var hyp;

function findHyp(len, wid){
  hyp = Math.sqrt((len * len) + (wid * wid));
  return hyp;
}
findHyp(Tri_length,Tri_width);
hyp = parseFloat(hyp).toFixed(2);
console.log(hyp)
alert ("The length of the hypotenuse is " + hyp)

// Longest word



var sentence = prompt("Say something: ");
var len = sentence.length;
var str_sentence = sentence.split(" ");
// console.log(str_sentence);
var sentence_array_len = str_sentence.length;
// console.log(sentence_array_len);
var longest_word = str_sentence[0];

for (var i = 0; i < sentence_array_len; i++){
while (str_sentence[i].length > longest_word.length){
  longest_word = str_sentence[i];
}}
console.log(longest_word);

//Bonus:
// Camel Case and Snake Case

// Part 1: camelCase

var statement = prompt("Write a statement:");
// console.log(statement);
var strStatement = statement.split(" ");
// console.log(strStatement);
var firstWord = strStatement[0];
strStatement.shift();
// console.log(firstWord);
// console.log(strStatement);
var strlength = strStatement.length;
// console.log(strlength);


//This function capitalizes the first letter of an element
var firstLetterFunction = function(arr, n){
    var firstLetter = arr[n].charAt(0).toUpperCase();
    return firstLetter;
}
var newArray = [];
for(var i = 0; i < strlength; i++){
  var fLet = firstLetterFunction(strStatement, i);
  var splitArr = strStatement[i].split("");
  var fOut = splitArr.shift();
  var capIn = splitArr.unshift(fLet);
  var capWord = splitArr.join('');
  // console.log(capWord);
  newArray.push(capWord);
}
var camelCase = firstWord + newArray.join('');
// console.log(camelCase);
alert(camelCase);


//Part 2: snake_case

var GB = prompt("How many GB does your file contain?");
// 1 GB contain 1024 MB
// 1 KB contains 1024 KB
// 1 KB contains 1024 bytes
// 1 byte contains 8 bits
var totalBits = GB * 1024 * 1024 * 1024 * 8
// Old Modem transfers 56 bits/seconds
var totalSeconds = totalBits / 56;
var leftSeconds = totalBits % 56;

var totalMinutes = Math.floor(totalSeconds) / 60;
var leftMins = Math.floor(totalSeconds) % 60;
// console.log("Minutes: " + totalMinutes);

var totalHours = Math.floor(totalMinutes) / 60;
var leftHours = Math.floor(totalMinutes) % 60;
alert("Total time in (Hours:Minutes:Seconds) " + Math.floor(totalHours) + ":"+ leftMins + ":" + leftSeconds)


// Super Bonus

var fileTransferTime = function(number){
    var totalBits = number * 1024 * 1024 * 1024 * 8
    // Old Modem transfers 56 bits/seconds
    var totalSeconds = totalBits / 56;
    var leftSeconds = totalBits % 56;

    var totalMinutes = Math.floor(totalSeconds) / 60;
    var leftMins = Math.floor(totalSeconds) % 60;
    // console.log("Minutes: " + totalMinutes);

    var totalHours = Math.floor(totalMinutes) / 60;
    var leftHours = Math.floor(totalMinutes) % 60;
    return "Total time in (Hours:Minutes:Seconds) " + Math.floor(totalHours) + ":"+ leftMins + ":" + leftSeconds;
    }

var inputGB = prompt("How many GB does your file contain?");

alert(fileTransferTime(inputGB));













