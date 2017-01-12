snakewater_montana = {
  paleontologist: "Dr. Alan Grant",
  depth: "10 meters",
  specimen: "Velociraptor"
}
Object {paleontologist: "Dr. Alan Grant", depth: "10 meters", specimen: "Velociraptor"}
var ghostOfHonor = snakewater_montana{paleotologist}

var ghostOfHonor = snakewater_montana.paleontologist
undefined
console.log(ghostOfHonor);
VM471:1 Dr. Alan Grant
undefined
var clever_girl = snakewater_montana.specimen
undefined
console.log(clever_girl);
VM549:1 Velociraptor
undefined
  nicaragua = {
    depth: "200 meters",
    annual_budget: 1500000,
    specimens: [
      "Tyrannosaurus Rex",
      "Stegosaurous",
      "Triceratops",
      "Velociraptor"
    ]
  }
Object {depth: "200 meters", annual_budget: 1500000, specimens: 
var nicaraguanSpecimens = nicaragua.specimens
undefined
console.log(nicaraguanSpecimens);
VM668:1 ["Tyrannosaurus Rex", "Stegosaurous", "Triceratops", "Velociraptor"]
undefined
var favoriteSpecimen = nicaraguanSpecimens[1]
undefined
var newAnnualBudget = nicaragua.annual_budget + 250000
undefined
console.log(newAnnualBudget);
VM839:1 1750000
undefined
nicaragua.annual_budget = newAnnualBudget
1750000
console.log(nicaragua.annual_budget);
VM903:1 1750000
undefined
hammonds_mines = {
  buenos_aires: {
    depth: "400 meters",
    annual_budget: 1000000,
    specimens: [
      "Dilophosaurus",
      "Brachiosaurus"
    ]
  },
  mexico: {
    depth: "350 meters",
    annual_budget: 900000,
    specimens: [
      "Gallimimus",
      "Parasaurolophus"
    ]
  }
}
Object {buenos_aires: Object, mexico: Object}
console.log(hammonds_mines.buenos_aires.depth);
VM949:1 400 meters
undefined
var MexicanMineDepth = hammonds_mines.mexico.depth
undefined
console.log(hammonds_mines.buenos_aires.annual_budget);
VM1058:1 1000000
undefined
var BuenosAirsAnnualBudget = hammonds_mines.buenos_aires.annual_budget
undefined
console.log(hammonds_mines.buenos_aires.specimens);
VM1172:1 ["Dilophosaurus", "Brachiosaurus"]
undefined

console.log(hammonds_mines);
VM1293:1 Object {buenos_aires: Object, mexico: Object}buenos_aires: Objectmexico: Object__proto__: Object
undefined
var HammondMines = [];
undefined
hammondMines = hammonds_mines
Object {buenos_aires: Object, mexico: Object}
console.log(hammondMines);
VM1396:1 Object {buenos_aires: Object, mexico: Object}

hammonds_mines.nicaragua = nicaragua
Object {depth: "200 meters", annual_budget: 1750000, specimens: Array[4]}annual_budget: 1750000depth: "200 meters"specimens: Array[4]__proto__: Object
console.log(hammonds_mines)
VM1586:1 Object {buenos_aires: Object, mexico: Object, nicaragua: Object}buenos_aires: Objectmexico: Objectnicaragua: Objectannual_budget: 1750000depth: "200 meters"specimens: Array[4]__proto__: Object__proto__: Object
undefined
var annualBudgetBA = hammonds_mines.buenos_aires.annual_budget
undefined
var annualBudgetM = hammonds_mines.mexico.annual_budget
undefined
var annualBudgetN = hammonds_mines.nicaragua.annual_budget
undefined
var totalAnnualBudget = annualBudgetBA + annualBudgetM + annualBudgetN
undefined
console.log(totalAnnualBudget);
VM1949:1 3650000
undefined
console.log(hammonds_mines.mexico.specimens[1]);
VM2001:1 Parasaurolophus
undefined