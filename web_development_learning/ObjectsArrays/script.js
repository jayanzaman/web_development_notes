var hamlets = [
  "Laurence Olivier, 1948",
  "Grigori Kozintsev, 1964",
  "Tony Richardson, 1969",
  "Franco Zeffirelli, 1990",
  "Kenneth Branagh, 1996",
  "Michael Almereyda, 2000"
];

// 1
// hamlets.forEach(function(hamlet){
//   var splitHam = hamlet.split(", ")
//   var name = splitHam[0];
//   var year = splitHam[1];
//   console.log( "O! the venerable " +
//   name + " starred as Hamlet in " +
//   year)

var numberTwo = hamlets.map(function(ham){
  var newHam = ham.split(", ");
  var innerArray = [
      newHam[0],
      parseInt(newHam[1])
  ]
  return innerArray;
})

var hamletObj = numberTwo.map(function(actor){
  var obj = { "name": actor[0], "year": actor[1] }
  return obj;
})

var swinging_hamlets = hamletObj.filter(function(actor){
  var year = actor.year.toString();
  var decade = year[2];
  return decade === '6';
})

var futureHamlets = hamletObj.filter(function(actor){
  var year = actor.year.toString();
  var decade = year[0];
  return decade === '2';
})

var quoteArray = [
  ["To be, or not to be: that is the question", "Hamlet - (Act III, Scene I)."],
  ["A little more than kin, and less than kind", "Hamlet - (Act I, Scene II)."],
  ["And it must follow, as the night the day, thou canst not then be false to any man", "Hamlet - (Act I, Scene III)."],
  ["This is the very ecstasy of love", "Hamlet - (Act II, Scene I)."],
  ["Brevity is the soul of wit", "Hamlet - (Act II, Scene II)."],
  ["Do you think I am easier to be played on than a pipe?", "Hamlet - (Act III, Scene II)."],
  ["Doubt that the sun doth move, doubt truth to be a liar, but never doubt I love", "Hamlet - (Act II, Scene II)."],
  ["I will speak daggers to her, but use none", "Hamlet - (Act III, Scene II)."],
  ["In my mind's eye", "Hamlet - (Act I, Scene II)."],
  ["Neither a borrower nor a lender be; For loan oft loses both itself and friend, and borrowing dulls the edge of husbandry", "Hamlet - (Act I, Scene III)."],
  ["Rich gifts wax poor when givers prove unkind", "Hamlet - (Act III, Scene I)."],
  ["That it should come to this!", "Hamlet - (Act I, Scene II)."],
  ["The lady doth protest too much, methinks", "Hamlet - (Act III, Scene II)."],
  ["The plays the thing wherein I'll catch the conscience of the king", "Hamlet - (Act II, Scene II)."],
  ["There is nothing either good or bad, but thinking makes it so", "Hamlet - (Act II, Scene II)."],
  ["This above all: to thine own self be true", "Hamlet - (Act I, Scene III)."],
  ["Though this be madness, yet there is method int.", "Hamlet - (Act II, Scene II)."],
  ["What a piece of work is man! how noble in reason! how infinite in faculty! in form and moving how express and admirable! in action how like an angel! in apprehension how like a god! the beauty of the world, the paragon of animals! ", "Hamlet - (Act II, Scene II)."],
  ["When sorrows come, they come not single spies, but in battalions", "Hamlet - (Act IV, Scene V)."]
];

var newQuotes = quoteArray.map(function(quote){
  var line = quote[0];
  var play = quote[1].split("-")[0];
  var actScene = quote[1].split("-")[1];
  var act = actScene.split(", ")[0].replace("(", "");
  var scene = actScene.split(", ")[1].replace(").", "");
  var obj = {quote: line, play: play, act: act, scene: scene}
  return obj;
})
console.log(newQuotes)


// })
