// getOwnPropertyNames vs. for in loop to go through the object

// Object.getOwnPropertyNames(watersnakes);

// var bldg = [];
// for (var prop in watersnakes){
//   bldg.push(prop);
// }

var hominidae = {
  tail: false,
  diet: "omnivorous"
};

var homo = {
  cranial_capacity: "large"
}

var homoSapiens = {
  walking: "twoLegs",
  communication: "language"
}

homoSapiens.__proto__ = homo;
homo.__proto__ = hominidae;

console.log(homoSapiens.cranial_capacity);
console.log(homoSapiens.diet);
console.log(homo.diet);

for(key in homoSapiens){
  console.log("the key " + key + " = " + homoSapiens[key]);
}

for(key in homoSapiens){
  var
}

Object.getOwnPropertyNames(homo);
//
