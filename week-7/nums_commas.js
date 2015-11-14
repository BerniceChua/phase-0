// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Bernice (navigator) and Bill (driver).  
// Saturday, Nov. 14, 9:00am Pacific Time

// Pseudocode
// input: a number as an integer
// output: number separated with commas as string
/*
1. PLace holder variable ("result") to hold the result
2. convert number to a string
3. go backwards in a loop through string by 3's
  a. insert a comma after 3rd number
  b. store string of numbers and comma in "result"
4. return the result
*/


// Initial Solution
function separateComma(number){
  var result = [];
  var numArray = number.toString().split("").reverse();
  for (var i = 0 ; i < numArray.length; i++){
    if ((i % 3 === 0)&&( i !== 0)){
      result.push(",");
    }
    result.push(numArray[i]);
    console.log(result);
  }
  return result.reverse().join('');
}



// Refactored Solution
/*
function separateComma(number){
  var result = "";
  var numArray = number.toString();
  for (var i = 3 ; i < numArray.length; i += 3){
    console.log("i = " + i);
    console.log("- i = " + (-i));
    result += numArray.substr(-i,3);
    console.log(result);
    
    console.log(numArray.substring(numArray.length - 3, numArray.length - 6));
  }
  return result;
}
*/
/*
    We tried refactoring the code, but with our current abilities, we were not 
    able to refactor without making the code longer or sacrificing readability.  
*/


// Your Own Tests (OPTIONAL)
var numCom = separateComma(1569743456);
console.log(numCom + " == "  + "1,569,743,456");



// Reflection
/*
Release 5: Reflect
Answer the following questions in the reflection section of your 
nums_commas.js file:

1. What was it like to approach the problem from the perspective of 
JavaScript? Did you approach the problem differently?
    Approaching the problem from the perspective of JS felt the same as 
    approaching the problem in Ruby.  We did not really approach the 
    problem differently.  Basically, it's:
        Step 1: figure out the input(s) & output(s)
        Step 2: pseudocode
        Step 3: code from what we know (flow control, conditionals, built-in methods, etc.)
        Step 4: check that the code runs and outputs what we want
        Step 5: if Step 4 does not work, redo Step 3 until Step 4 works
        Step 6: refactor if possible

2. What did you learn about iterating over arrays in JavaScript?
    We learned that iterating over arrays in JS is basically the same as 
    iterating over arrays in Ruby.  

3. What was different about solving this problem in JavaScript?
    There's not really much difference in terms of logic.  
    The differences are only that the method's names are different.  

4. What built-in methods did you find to incorporate in your refactored solution?
    The built-in methods that we used were:
        .toString()
        .split("")
        .reverse()
        .length
        .join('')
    They do exactly what they say they do, and do the same thing as their Ruby counterparts.
*/