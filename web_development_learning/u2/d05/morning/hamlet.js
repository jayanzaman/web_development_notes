// Act I

var hamlets = [
    "Laurence Olivier, 1948",
    "Grigori Kozintsev, 1964",
    "Tony Richardson, 1969",
    "Franco Zeffirelli, 1990",
    "Kenneth Branagh, 1996",
    "Michael Almereyda, 2000"
];

// Scene I

var actorArray = [];
var yearArray = [];

hamlets.forEach(function(el) {
    var actor = el.split(', ')
    actorArray.push(actor[0]);
    yearArray.push(actor[1]);
})
for (var i = 0; i < actorArray.length; i++) {
    console.log("O! the venerable " + actorArray[i] + " starred as Hamlet in " + yearArray[i])
}

// Scene II
// var newHamletsArray = [];
// hamlets.forEach(function(el) {
//     var actor = el.split(', ')
//     var item = [];
//     var name = actor[0];
//     var year = parseInt(actor[1]);
//     item.push(name);
//     item.push(year);
//     newHamletsArray.push(item);
// })
// console.log(newHamletsArray);

var numberTwo = hamlets.map(function(ham) {
    var newHam = ham.split(', ');
    var innerArray = [
        newHam[0],
        parseInt(newHam[1])
    ]
    return innerArray;
})


var hamletObj = numberTwo.map(function(actor) {
    var obj = {
        "name": actor[0],
        "year": actor[1]
    }
    return obj;
})

var swinging_hamlets = hamletObj.filter(function(actor) {
    var year = actor.year.toString();
    var decade = year[2];
    return decade === '6';
})

var future_hamlets = hamletObj.filter(function(actor) {
        var year = actor.year.toString();
        var decade = year[0];
        return decade === '2';
    })
    // Scene III
    // var hamletObjArr = []


// hamlets.forEach(function(el) {
//     var actor = el.split(', ')
//     var name = actor[0];
//     var year = parseInt(actor[1]);
//     var element = {}
//     element.name = name;
//     element.year = year;
//     hamletObjArr.push(element)
// })
// console.log(hamletObjArr);

// var hamletsObj =
//     // Scene IV
//     var swinging_hamlets = [];
// hamletObjArr.forEach(function(el) {
//     if (el.year > 1959 && el.year < 1970) {
//         swinging_hamlets.push(el.name);
//     }
// });
// console.log(swinging_hamlets);
// // Scene V
// var future_hamlets = [];
// hamletObjArr.forEach(function(el) {
//     if (el.year > 1999 && el.year < 2010) {
//         future_hamlets.push(el.name);
//     }
// });
// console.log(future_hamlets);
// Act II

var quotesArray = [
    ["To be, or not to be: that is the question", "Hamlet-(Act III,Scene I)."],
    ["A little more than kin, and less than kind", "Hamlet-(Act I,Scene II)."],
    ["And it must follow, as the night the day, thou canst not then be false to any man", "Hamlet - (Act I, Scene III)."],
    ["This is the very ecstasy of love", "Hamlet-(Act II,Scene I)."],
    ["Brevity is the soul of wit", "Hamlet-(Act II,Scene II)."],
    ["Do you think I am easier to be played on than a pipe?", "Hamlet-(Act III,Scene II)."],
    ["Doubt that the sun doth move, doubt truth to be a liar, but never doubt I love", "Hamlet-(Act II,Scene II)."],
    ["I will speak daggers to her, but use none", "Hamlet-(Act III,Scene II)."],
    ["In my mind's eye", "Hamlet-(Act I,Scene II)."],
    ["Neither a borrower nor a lender be; For loan oft loses both itself and friend, and borrowing dulls the edge of husbandry", "Hamlet-(Act I,Scene III)."],
    ["Rich gifts wax poor when givers prove unkind", "Hamlet-(Act III,Scene I)."],
    ["That it should come to this!", "Hamlet-(Act I,Scene II)."],
    ["The lady doth protest too much, methinks", "Hamlet-(Act III,Scene II)."],
    ["The plays the thing wherein I'll catch the conscience of the king", "Hamlet-(Act II,Scene II)."],
    ["There is nothing either good or bad, but thinking makes it so", "Hamlet-(Act II,Scene II)."],
    ["This above all: to thine own self be true", "Hamlet-(Act I,Scene III)."],
    ["Though this be madness, yet there is method int.", "Hamlet-(Act II,Scene II)."],
    ["What a piece of work is man! how noble in reason! how infinite in faculty! in form and moving how express and admirable! in action how like an angel! in apprehension how like a god! the beauty of the world, the paragon of animals! ", "Hamlet-(Act II,Scene II)."],
    ["When sorrows come, they come not single spies, but in battalions", "Hamlet-(Act IV,Scene V)."]
];

var quotes = [
    ["To be, or not to be: that is the question", "Hamlet - (Act III, Scene I)."]
];
var quote = quotes[0]
var line = quote[0]
var playAct = quote[1].split('-');
var play = playAct[0]
var actScene = playAct[1].split(',');
var act = actScene[0].replace("(", "");
var scene = actScene[1].replace(").", "");
console.log(play, act, scene)

var newQuotesArray = quotesArray.map(function(qts) {
    var quote = qts[0]
    var line = quote[0]
    var playAct = quote[1].split('-');
    var play = playAct[0]
    var actScene = playAct[1].split(',');
    var act = actScene[0].replace("(", "");
    var scene = actScene[1].replace(").", "");
})

console.log(newQuotesArray);



// Scene I
