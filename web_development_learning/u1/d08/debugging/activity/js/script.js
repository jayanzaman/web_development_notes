(function(){

console.log("script loaded");

var userName = prompt("What is your name?");
var cat_count = prompt("How many cats do you want? (Maximum: 3)");

console.log(userName);
console.log(cat_count);


for(i = 0; i <= cat_count; i++){
  var new_cat = document.createElement("div");
  new_cat.setAttribute('class', 'cat cat-'+i);
  // new_cat.setAttribute('id', 'cat-'+i);
  // new_cat.className = "cat";
  // new_cat.className = "cat-" + i;
  var container = document.getElementById('cat_container');
  // var catsContainer = container.getElementsByClassName('cat');
  // catsContainer.appendChild(new_cat);

  container.appendChild(new_cat);
}

})();
