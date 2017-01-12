// Part 1 - Objects

// 1. Pangolins

var detectives = {
  mulder: {
    name: "Fox Mulder",
    actor: "David Duchovny",
    school: "Oxford",
    degree: "Pscychology"
  },
  scully: {
    name: "Dana Scully",
    actor: "Gillian Anderson",
    school: "University of Maryland",
    degree: "Physics"
  }
};

console.log(detectives.scully.name);

for(var key in detectives.mulder){
  console.log(detectives.mulder[key]);
}

var fMulder = detectives.mulder.name;
var dScully = detectives.scully.name;
var actor   = detectives.mulder.actor;
var actress = detectives.scully.actor;


console.log(fMulder+" and "+dScully+", played by "+actor+" and "+actress+", are detectives in the X-Files");

// 2. Reading List

var readingList = [
  {
    title: "The Hobbit",
    author: "J.R.R. Tolkien",
    alreadyRead: false
  },
  {
    title: "Harry Potter and the Order of the Phoenix",
    author: "J.K. Rowling",
    alreadyRead: true
  }
];

for( var i = 0; i < readingList.length; i++){
    if (readingList[i].alreadyRead === true) {
      console.log("You already read "+readingList[i].title+" by "+readingList[i].author);
    } else {
      console.log("You still need to read "+readingList[i].title+" by "+readingList[i].author);
    }
}

// 3. Movie Database

var alien = {
  title: "Alien",
  director: "Ridley Scott",
  duration: 117,
  releaseYear: 1979,
  stars: ["Tom Skerritt", "Sigourney Weaver", "Veronica Cartwright", "Harry Dean Stanton", "John Hurt", "Ian Holm", "Yaphet Kotto"]
}


var printMovieInfo = function(movie){
  var movieStars = "";
  for(var i = 0; i<movie.stars.length; i++){
    movieStars += movie.stars[i]+", ";
  }
  console.log(movie.title+", directed by "+movie.director+
    " and released in "+ movie.releaseYear+", lasts for "+ movie.duration+
    " minutes. Stars: "+movieStars);
}
printMovieInfo(alien);


// Part Two - JS Events
// 4. getElementById

var subtitle = document.getElementById('subtitle');
console.log(subtitle);

// 6. onclick

var clickListItem = document.getElementById('clickListItem');

  clickListItem.onclick =  function(){
    console.log("You have clicked the li with the text ‘Click Me’");
  }

// Bonus
// For…In Loops

var aboutMe = {
  firstName: "Jayan",
  lastName: "Zaman",
  age: 30,
}
aboutMe.hometown = "Jamaica";
aboutMe.favoriteAnimal = "Tiger"

var printData = function(){
  for (var key in aboutMe){
    // var isFunc = (typeof aboutMe[key] === 'function')
    // if(isFunc === true){
        console.log(key+": "+this[key]);
    // } else{
        // console.log(key+": "+this[key]);
    // }
}
}

aboutMe.printData = printData;
aboutMe.printData();
// typeof function(){} === 'function';

// Event - mouseover

var hoverListItem = document.getElementById('hoverListItem');
  hoverListItem.addEventListener('mouseover', function() {
  console.log("You have hovered over the li with the text ‘Hover Over Me’");
});

// Event - Adding Elements!


var clickMe = document.getElementById('clickListItem');

clickMe.addEventListener('click', function() {
  clickMe.innerHTML = "A message has been clicked";
});

// Super Bonus Bros

//onload

var container = document.getElementById('container');
var onLoading = document.createElement('h3');
onLoading.setAttribute('id', 'onLoading');
onLoading.innerHTML = "This element loads when the page loads";
container.appendChild(onLoading);

// onscroll (on document being scrolled)

var onScrolling = document.createElement('h4');
onScrolling.setAttribute('id', 'onScrolling');
onScrolling.innerHTML = "This element reacts to scrolling";

onScrolling.addEventListener('scroll', function() {
  onScrolling.innerHTML = "New message here";
});
container.appendChild(onScrolling);





















