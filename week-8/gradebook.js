/*
Gradebook from Names and Scores

I worked on this challenge [by myself, with: Ryan J. Ho]
This challenge took me [1.5] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

var gradebook = {};
for (var i = 0; i < students.length; i++) {
  gradebook[students[i]] = {};
};
console.log(gradebook);

var counter = 0;
for (var key in gradebook) {
  gradebook[key]["testScores"] = scores[counter];
  counter+=1;
}
console.log(gradebook);

gradebook["addScore"] = function(name, score) {
  gradebook[name].testScores.push(score);
}
console.log(gradebook);

gradebook["getAverage"] = function(name) {
  return average(gradebook[name].testScores);
};

function average(array) {
  var sum = 0;
  for (var i = 0; i < array.length; i++) {
    sum += array[i];
  };
  return sum / array.length;
}
console.log(gradebook);






// __________________________________________
// Refactored Solution 
// (this is really refactored, but it will not pass the tests because "average" is not its own function.)

var gradebook = {
  addScore: function(name, score) {
    this[name].testScores.push(score);
  },

  getAverage: function(name) {
    return this[name].testScores.reduce( function(sum, next) {
      return sum + next;
    }) / this[name].testScores.length;
  }, 
};

console.log(gradebook);

for (var i = 0; i < students.length; i++) {
  gradebook[students[i]] = {testScores: scores[i]};
};

console.log(gradebook);






// __________________________________________
// Refactored Solution 
// (this is really refactored, but "average" is its own function to pass the tests.)

var gradebook = {
  addScore: function(name, score) {
    this[name].testScores.push(score);
  }, 

  getAverage: function(name) {
    return average(this[name].testScores);
  }, 

  average: function (array) {
    return array.reduce( function(sum, next) {
      return sum + next;
    }) / array.length;
  }, 
};

console.log(gradebook);

for (var i = 0; i < students.length; i++) {
  gradebook[students[i]] = {testScores: scores[i]};
};

console.log(gradebook);






// __________________________________________
// Reflect
/*
Release 9: Reflect
In the reflection section in your gradebook.js file, answer the following questions:

1. What did you learn about adding functions to objects?
  JS objects can be used as both "hash"-type data structures AKA associative arrays, AND 
  as actual objects.  To add a function to a JS object, it looks like adding an element 
  to a hash because the name of the function is the key, and the function itself is the 
  value.  We just have to remember that the end of a function inside an object should be 
  a comma instead of a semi-colon.  The function inside an object is now a "property" of 
  the object that it lives in, so it becomes a method that this object can do or perform.  
  And to perform an operation/function on the object that it is a property of, the 
  property-function uses the "this" keyword.  

2. How did you iterate over nested arrays in JavaScript?
  We iterate over nested arrays in JS the same way that we iterate over nested arrays in 
  Ruby.  We use the bracket notation to access the index of the array, to get its value.  

3. Were there any new methods you were able to incorporate? If so, what were they and 
how did they work?
  We used ".reduce()", which was not new to me, but not previously introduced.  

  .reduce() is one of those "higher-order functions", which are called such because it 
  takes in a function as its argument/parameter.  Basically, iterates over an array 
  or "collection", and uses the formula inside of that function to perform some kind of 
  calculation on the current element with the next element, until the end of the 
  collection is reached.  In doing so, it basically abstracts the for-loop from our 
  non-refactored solution.  

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
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)
