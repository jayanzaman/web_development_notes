var instructors = ['Bryan','Heidi','John','Tims', 'Jared', 'Jason'];

instructors.pop();
console.log(instructors);

instructors.push('Nick');
console.log(instructors);

console.log(instructors.indexOf('Jared'));
// Returns the position of the item

console.log(instructors.includes('Tims'));
//Returns a Boolean value of the item

Array(16).join('Na') + " Batman!"
// Returns 'Na' 16 times

instructors.shift();
//Takes out the first element in the array

instructors.unshift('Name');
//Puts a new element in front of the array

var str = "... won tnereffid skool siht , haoW"
str = str.split('');

str = str.reverse();

str = str.join('');

console.log(str);
// Takes a string, takes out the quotes, reverses and puts quotes back in. Then returns.

instructors.sort();
console.log(instructors);
//Puts items in the array in alphabetical order
instructors.reverse();
console.log(instructors);
//Reverses the items in the array.

var nums = [1,2,3,4,5,6,7,8,9,10];

var evens = nums.filter(function(n) {
  return n % 2 === 0;
});
console.log(evens);
// Returns the even numbers.

var big = nums.filter(function(n){
  return n > 4;
});

console.log(big);
// Returns all values bigger than 4

var evensNum = nums.map(function(n){
  return n % 2 === 0;
});
console.log(evensNum);
//Map determines is each item in the array meets the condition
















