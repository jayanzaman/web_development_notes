var frameworks = {
        "frontEnd": [{
            "name": "React",
            "description": "A declarative, efficient, and flexible JavaScript library for building user interfaces."
        }, {
            "name": "Angular",
            "description": "HTML enhanced for web apps"
        }, {
            "name": "Backbone",
            "description": "Give your JS App some Backbone with Models, Views, Collections, and Events"
        }], // ends frontEnd array
        "backEnd": [{
                "name": "Express",
                "description": "A minimalist framework for building a host of web and mobile applications as well as application programming interfaces (APIs)"
            }, {
                "name": "Meteor",
                "description": "An open-source, model-view controller (MVC) framework for building websites and web/mobile applications."
            }, {
                "name": "Sails",
                "description": "Sails.js offers a model-view controller (MVC) pattern for implementing data-driven application programming interfaces (APIs)."
            }] // ends backendArray
    } // ends data json object

var frontEndElements = frameworks.frontEnd;
var modifiedFrontEnd = frontEndElements.map(function(el) {
    return el.name + ".js";
});

console.log(modifiedFrontEnd);

var backendElements = frameworks.backEnd;
var modifiedBackEnd = backendElements.map(function(el) {
    return el.name + ".js";
});
console.log(modifiedBackEnd);

var filteredFrontEnd = frontEndElements.filter(function(el) {
    if (el.description.length > 30) {
        return el;
    };
});
console.log(filteredFrontEnd);

function filterVowels (el){
  var firstLetter = el.name.toLowerCase()[0];
  console.log(firstLetter)
  if (firstLetter ===  'a' || firstLetter === 'e' || firstLetter === 'i' || firstLetter === 'o' || firstLetter === 'o'){
    return true;
  } else{
    return false;
  };
}

var filteredBackEnd = backendElements.filter(filterVowels);
console.log(filteredBackEnd);

var frontEndNames = frontEndElements.map(function(el){
    return el.name
  });

var allFrontNames = frontEndNames.reduce(function(a, b){
  return a +" "+ b
})

var backEndNames = backendElements.map(function(el){
  return el.name;
})
var allBackNames = backEndNames.reduce(function(a,b){
  return (a + " "+ b)
})
var ABN = allBackNames + " are the back end frameworks "
var AFN = allFrontNames + " are the front end frameworks ";

var allTogether = [AFN, ABN]

allTogether.reduce(function (a,b){
  return a + b
})
