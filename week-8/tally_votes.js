// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Nicola Beuscher
// This challenge took me [4] hours.

// These are the votes cast by each student. Do not alter these objects here.

var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/

/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/*
Step 1: go through each "voter" in "votes"
Step 2.  for each voter, look at the role (example: "president")
  and count how many times a name appears.
    Step 2.1 IF the name does not exist yet, 
      create it and set the vote count to 1.
    Step 2.2 IF the name exists already, 
      add 1 to the vote count.

Step 3: for each role, find the name with the highest number (vote count) associated with it.  
  Assign that name to the associated role in "officers".
*/


// __________________________________________
// Initial Solution

for (var voter in votes) {
  // console.log(votes[voter].president);
  if (!voteCount.president[votes[voter].president]) {
    voteCount.president[votes[voter].president] = 1;
  } else {
    voteCount.president[votes[voter].president] += 1;
  }
}

for (var voter in votes) {
  // console.log(votes[voter].president);
  if (!voteCount.vicePresident[votes[voter].vicePresident]) {
    voteCount.vicePresident[votes[voter].vicePresident] = 1;
  } else {
    voteCount.vicePresident[votes[voter].vicePresident] += 1;
  }
}

for (var voter in votes) {
  // console.log(votes[voter].president);
  if (!voteCount.secretary[votes[voter].secretary]) {
    voteCount.secretary[votes[voter].secretary] = 1;
  } else {
    voteCount.secretary[votes[voter].secretary] += 1;
  }
}

for (var voter in votes) {
  // console.log(votes[voter].president);
  if (!voteCount.treasurer[votes[voter].treasurer]) {
    voteCount.treasurer[votes[voter].treasurer] = 1;
  } else {
    voteCount.treasurer[votes[voter].treasurer] += 1;
  }
}

console.log(voteCount);


for (var role in voteCount) {
  var largest = 0; 
  for (var name in voteCount[role]) {
    if (voteCount[role][name] > largest) {
      largest = voteCount[role][name];  
      officers[role] = name;
    }
  }
}
console.log(officers);






// __________________________________________
// Refactored Solution

for (var voter in votes){
  for (var role in votes[voter]){
    if (!voteCount[role][votes[voter][role]]) {
      voteCount[role][votes[voter][role]] = 1;
    } else {
      voteCount[role][votes[voter][role]] +=1
    }
  }
}
console.log(voteCount);


for (var role in voteCount) {
  var largest = 0; 
  for (var candidate in voteCount[role]) {
    if (voteCount[role][candidate] > largest) {
      largest = voteCount[role][candidate];  
      officers[role] = candidate;
    }
  }
}
console.log(officers);






// __________________________________________
// Reflection
/*
Release 5: Reflect
In the reflection section in your "tally_votes.js" file, answer the following questions:

1. What did you learn about iterating over nested objects in JavaScript?
  I learned that iterating over nested objects in JavaScript is like iterating over nested 
  hashes in Ruby, because the thing used to iterate can be chained.  

  The difference is that in JS, you can use a dot notation and a bracket notation.  The 
  dot notation is convenient for accessing/modifying the nested parts of an object if 
  you know that the key of the method/function or inner nested object that you want 
  exists inside your selected object.  The bracket notation is more flexible, because 
  it allows you to do 2 things: 
    1) IF the key name is surrounded by quotes, it is used to access/modify an 
        existing nested object/function.  It's like a "property" of an object.  
    2) IF the key name is just plain without quotes, it is used as a variable or 
        placeholder for key names, the same way that variables are used regularly.  

2. Were you able to find useful methods to help you with this?
  We originally looked for some built-in methods/functions to use for refactoring, but 
  we did not find any that suited our needs.  There was one called ".valueOf()", but it 
  did the exact same thing using the dot notation or bracket notation, so we did not 
  use it.  

3. What concepts were solidified in the process of working through this challenge?
  The initial solution was easy for us.  What was difficult was refactoring, because 
  we initially got confused about the variable name inside "for ... in".  We made a 
  lot of trial-and-errors and used a lot of "console.log()" just to see what that 
  variable was supposed to be, and what it was containing.  Also, multiple-chained 
  brackets and brackets-within-brackets.  I need more practice, and also I need to 
  find a way that makes the chained brackets and brackets-within-brackets more 
  readable, because I think that is what confused us.  

  Also, I wish I thought of this earlier: we should have made a shorter sample input, 
  so that it will be easier to check against, and so it would have been less confusing.  

*/






// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
