var buenosAires = {
  location: "Buenos Aires",
  depthInMeters: "400",
  annualBudget: 1000000,
  specimens: ["Dilophosaurus","Brachiosaurus"]
};

var mexico = {
  location: "Mexico",
  depthInMeters: "350",
  annualBudget: 900000,
  specimens: ["Gallimimus","Parasaurolophus"]
};

var snakewaterMontana = {
  location: "SnakewaterMontana",
  depthInMeters: "10",
  annualBudget: 150000,
  specimens: ["Velociraptor","Brachiosaurus"]
};

var nicaragua = {
  location: "Nicaragua",
  depthInMeters: "200",
  annualBudget: 1500000,
  specimens: ["Tyrannosaurus Rex","Stegosaurous","Triceratops","Velociraptor"]
};

//Put the objects in an array then go through it
var digArray = [];
digArray.push(buenosAires, mexico, snakewaterMontana, nicaragua);

var totalDepth = 0;
var annualbdg = 0;
var costPerMeter = 0;
var highestCost = 0;
var mostExpSite;
for(var i = 0; i < digArray.length; i++){
  // console.log("In "+digArray[i].location+" we can find the specimens "+digArray[i].specimens.join(', ')+".");
  totalDepth += parseInt(digArray[i].depthInMeters);
  // console.log("Total Depth: "+totalDepth)
  var avgDepth = (totalDepth / digArray.length);
  // console.log("Average depth of the "+digArray.length+" sites is "+avgDepth);
  annualbdg += digArray[i].annualBudget;
  // console.log("The total annual budget is "+annualbdg);
  costPerMeter = (digArray[i].annualBudget / parseInt(digArray[i].depthInMeters));
  // console.log("The cost per meter in "+digArray[i].location+" is "+costPerMeter);
  while(highestCost < costPerMeter){
    highestCost = costPerMeter;
    mostExpSite = digArray[i].location;
  }
}
    console.log("The most expesive site is "+mostExpSite+" with a cost per meter of "+hcd ighestCost);

console.log(typeof digArray[0].specimens);

for(var i = 0; i <digArray.length; i++){

    }
}







