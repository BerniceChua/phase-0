/*
The Ruby challenge that I enjoy doing are the math-related ones like the 
one for calculating for a factorial (because I'm a math nerd).  

Pseudocode:
Input = number (which we will get the factorial of)
Output = the factorial of this number

Step 1: check the value of the input number.
Step 1.1: IF the number is equal to 0 or 1, 
	the factorial of this number is 1.
Step 2: WHILE the number is bigger than 1,
	multiply this number with the "minus-one" version of itself.
Step 3: the result is the factorial of this number.  
*/

var factorial = function(number) {
  if (number === 0) {
    return 1;
  }
    
  var factorial = number;

  while (number > 1) {
    factorial *= number - 1;

    number--;
  }

  return factorial;
}

// or

var factorial = function(number) {
  if (number === 0) {
    return 1;
  }

  var factorial = number;
  for (var i = (number - 1); i > 1; i--) {
    factorial *= i;
  }

  return factorial;
}






// Refactored

var factorial = function(number) {
  if (number === 0) {
    return 1;
  }

  return Array.apply(1, Array(number)).reduce(function(currentNumber, obligatoryNextNumber, index){ 
    return currentNumber *= index + 1; 
  }, 1);
}






// Refactored with recursion

var factorial = function(number) {
  if (number === 0) {
    return 1;
  }

  return number * factorial(number - 1);
}






// Driver code

console.log("factorial = " + factorial(0));
console.log("factorial = " + factorial(1));
console.log("factorial = " + factorial(3));
console.log("factorial = " + factorial(5));






/*
Release 4: Reflect
Create a reflection section in your "review.js" file, then answer the following questions:

1. What concepts did you solidify in working on this challenge? 

	I did this challenge, because I wanted to learn how to do higher-order functions in 
  JavaScript like .reduce() or .map, and also Array methods like .apply().  

2. What was the most difficult part of this challenge?

	Using .reduce in JavaScript is a little different than using .reduce in Ruby.  I had 
  to get used to the syntax.  

3. Did you solve the problem in a new way this time?

	Yes.

4. Was your pseudocode different from the Ruby version? What was the same and what 
was different?

  Yes, I was able to word the pseudocode more concisely.  But the idea behind it/the logic 
  is the same.  
*/