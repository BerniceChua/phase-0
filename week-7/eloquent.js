// Eloquent JavaScript


// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
favoriteAnimals = ["tardigrade", "panda"];
for (animal in favoriteAnimals) {
    console.log(favoriteAnimals[animal].toUpperCase());
}
console.log("My favorite animal is the " + favoriteAnimals[0] + ".");

/*
Write a short program that asks for a user to input their favorite food. After 
they hit return, have the program respond with "Hey! That's my favorite too!" 
(You will probably need to run this in the Chrome console (Links to an external 
site.) rather than node since node does not support prompt or alert). Paste your 
program into the eloquent.js file.
*/
var askForFavoriteFood = function() {
    var favoriteFood = prompt("What is your favorite food?");
    alert("Hey, " + favoriteFood + " is my favorite too!")
}





// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping A Triangle
/*
Step 1: get input, which is the number of lines on the triangle
Step 2: while the counter is less than the number of lines of the triangle:
    Step 2.1: output a "#" repeated by the number of its line number 
        (example, I'm at line 4 of the triangle, the "#" will repeat 4 times.)
*/
function triangleMaker(triangleHeight) {
    var counter = 1;
    while (counter <= triangleHeight) {
        console.log("#".repeat(counter));
        counter++;
    }
};
triangleMaker(7);

// FizzBuzz
/*
Step 1: get input, which is the number that FizzBuzz will stop (endNumber).
Step 2: while the counter is less than the endNumber:
    Step 2.1: IF the current number is divisible by 3, 
        display "Fizz"
    Step 2.2: IF the current number is divisible by 5, 
        display "Buzz"
    Step 2.3: IF the current number is divisible by 15, 
        display "FizzBuzz"
    Step 2.4: IF the current number is neither of those, 
        display the current number.
*/
function fizzbuzz(endNumber) {
    for (var currentNumber = 1; currentNumber <= endNumber; currentNumber++) {
        if (currentNumber % 15 === 0) {
            console.log("FizzBuzz");
        } else if (currentNumber % 3 === 0) {
            console.log("Fizz");
        } else if (currentNumber % 5 === 0) {
            console.log("Buzz")
        } else {
            console.log(currentNumber);
        }
    }
};
fizzbuzz(100);





// Functions

// Complete the `minimum` exercise.
var minimum = function(num1, num2) {
    if (num1 < num2) {
        return num1;
    } else if (num2 < num1) {
        return num2;
    } else {
        return "The 2 numbers are equal."
    }
}
console.log(minimum(8, 9));
console.log(minimum(8, 8));
console.log(minimum(15, 9));





// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
    name: "Bernice Anne W. Chua", 
    favoriteFoods: ["Char-siu", "Pilipino-style Fried Chicken", "Filet Mignon"], 
    quirk: "I don't like wasting things, so I use them until they are run into the ground.  After that, I either 'up-cycle' them or re-purpose them for something else or recycle them or compost them.  Only if they are gross or useless do I throw them away in the regular garbage.", 
};


/*
Draft of answers

Release 1: Read and Respond
Read the following sections. Answer the questions in the text submission box. For 
questions that ask you to complete an exercise or write code, put that into the 
eloquent.js file.

Introduction (Links to an external site.)
1. Did you learn anything new about JavaScript or programming in general?
    No, I did not learn anything new about JavaScript from reading Chapter 1.  I actually 
    used this book to study for the entrance interview of another coding bootcamp.  Also, 
    before studying for any coding bootcamps, one of my friends is really into JavaScript, 
    so I learned from him.  

2. Are there any concepts you feel uncomfortable with?
    n/a
    I think that JS and Ruby are good for what they were intended to 
    do.  It's like having tools.  For example, I have a philips-head 
    screwdriver.  I cannot say that I'm uncomfortable using a torq-head 
    because it's slightly different.  They are meant to do different 
    things.  Like using a pot versus a frying pan versus a wok versus 
    a dutch oven.  People don't use frying pans to cook soup.  

Ch. 1: Values, Types, and Operators
1. Identify two similarities and two differences between JavaScript and Ruby syntax with 
regard to numbers, arithmetic, strings, booleans, and various operators.
    2 Similarities:
        1) JavaScript is not a heavily-typed language like the compiled languages (C, C++, Java, 
        etc.).  There is automatic type conversion between integers to floats.  Example:
            quotient = 5 / 2.0
            the value of "quotient" will be 2.5
        2) Mathematical operations and comparisons are done the same way in Ruby & JS.
    2 Differences:
        1) To represent Infinity, in JS it is merely the keyword "Infinity".  In Ruby, 
        you'll need to type "Float::INFINITY".
        2) To represent "Not A Number", in JS it is an actual special number called "NaN".  In 
        Ruby, it is a constant called "Float::NAN"
        3) To make an exponent, example 5 raised to 2 (equal to 25), in JS, you will need 
        "Math.pow(5, 2)".  But there is a shorthand for powers of 10, for scientific notation.  
        Like for example, 10 raised to 5 = 100000.  This shorthand in JS is "e#"" which means 
        "exponent", wherein e = raised to the 10th power, and the number after it is how many 
        times 10 is multiplied with itself.  
        Example: 
        3 times 10 raised to 5 === 3 * Math.pow(10,5) === 3 * 100000 === 3e5 === 300000
        In Ruby, there is only 1 way to make exponents:
            5 raised to 2 (equal to 25) === 5**2
            3 times 10 raised to 5 === 3**(10 * 5) === 3 * 100000 === 300000

Ch. 2: Program Structure
1. What is an expression?
    In JS, an expression is some code that produces a value.  

2. What is the purpose of semicolons in JavaScript? Are they always required?
    In JS, a semi-colon lets the interpreter know that it's the end of the statement.  

3. What causes a variable to return undefined?
    A variable will return "undefined" if it does not have a value associated with it.  

4. Write your own variable and do something to it in the eloquent.js file.
    See https://github.com/BerniceChua/phase-0/blob/master/week-7/eloquent.js

5. What does console.log do and when would you use it? What Ruby method(s) is this similar to?
    "console.log()" outputs to the console/command line whatever is inside the parenthesis.  
    This is the same as "puts" in Ruby.  

6. Write a short program that asks for a user to input their favorite food. After they 
hit return, have the program respond with "Hey! That's my favorite too!" (You will 
probably need to run this in the Chrome console (Links to an external site.) rather than 
node since node does not support prompt or alert). Paste your program into the eloquent.js 
file.
    See https://github.com/BerniceChua/phase-0/blob/master/week-7/eloquent.js

7. Describe while and for loops
    JS while loops and for loops work the same way as in Ruby.  

8. What other similarities or differences between Ruby and JavaScript did you notice in 
this section?
    Variables need a "var" in front of them when they are declared.  The while loop is
    made the same way.  For loops also have a "for (thing in myCollection)" format.  

9. Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess 
Board) in the eloquent.js file.
    See https://github.com/BerniceChua/phase-0/blob/master/week-7/eloquent.js

Ch. 3: Functions (Links to an external site.) (Skip the sections on closure and recursion)

1. What are the differences between local and global variables in JavaScript?
    In JS, local variables are only accessible inside the scope or block that it 
    was declared in.  Same concept as local variables in Ruby.  

    Global variables are variables that are declared outside functions.  This 
    causes these variables to be added to the "window" variable in browsers, 
    which is the global object that all JavaScript functions live in.  For this 
    reason, all the functions of this .js file can access the global variable.  

2. When should you use functions?
    Functions in JS are like methods in Ruby.  A function is a reusable 
    block of code that is some kind of action associated with an object, 
    that the object can do.  Methods are great ways to organize the code 
    because if some code needed to gets changed and something goes wrong, 
    it is much easier to see where something went wrong.  By assigning 
    specific tasks to separate methods -- "separation of concerns" -- 
    the program less redundant and the code is more reusable in a single 
    program without needing to rewrite it each time.

    To create a method, these are the important syntax to have in a 
    .rb file:

    var functionName = function() {
        // Code lives here!
    };

    function functionName() {
        // Code lives here!
    };

    There's another version where the function accepts a specific 
    number of arguments:
    
    var functionName = function(arg1, arg2) {
        // Code lives here!
    };

    function functionName(arg1) {
        // Code lives here!
    };

3. What is a function declaration?
    A function declaration is another way or notation of creating functions.  
    As I have shown above, instead of going:
    var functionName = function(argument) {
        // body...
    }
    I can just use:
    function functionName(argument) {
        // body...
    }
    And they both do the same thing and have the same effect.  

4. Complete the minimum exercise in the eloquent.js file.
    See https://github.com/BerniceChua/phase-0/blob/master/week-7/eloquent.js

Ch. 4: Data Structures: Objects and Arrays (Links to an external site.) 
Skip the sections on the Lycanthrope's log, Computing Correlations, and sections from 
Further Arrayology to the Global Object, but read the chapter summary.

1. What is the difference between using a dot and a bracket to look up a 
property? Ex. array.max vs array["max"]
    When using a dot, the part after the dot must be a valid variable name, and 
    it directly names the property. When using square brackets, the expression 
    between the brackets is evaluated to get the property name. 

    So if I say "array.max", there has to be an actual property (equivalent to 
    "key" in Ruby) called "max" in "array".  It is the same as saying 
    "array["max"]".  If there is none, we will get an error message.  This 
    makes it easier if you actually know that this property exists in the object, 
    but unfortunately if the property is a number or has a space between, then 
    this cannot be used.  You would be better off using square bracket notation.  

    But when I say "array[max]", the thing inside the square brackets (in this 
    case "max") is treated as a variable, so it will extract the real property 
    named by the value held in here.  This makes the square bracket notation 
    more useful in iterating through an object.  

2. Create an object called me that stores your name, age, three favorite foods, and 
a quirk in your eloquent.js file.
    See https://github.com/BerniceChua/phase-0/blob/master/week-7/eloquent.js

3. What is a JavaScript object with a name and value property similar to in Ruby?
    In JS, a hash is called an "object".  

Release 2: Reflect
In the text submission box, answer the following questions:

1. What are the biggest similarities and differences between JavaScript and Ruby?
    The main biggest difference between JS and Ruby is that JS does not have classes.  
    It only has prototypes and pseudo-classes.  Methods are called functions, and 
    you need to put "var" in front of variable names to declare them.  I do like that 
    the for loop has the "for (thing in myCollection)" way, but it also has the more 
    flexible way which is "for (var i = myCollection.length; i > 0; i -= 2)" because 
    you can iterate backwards AND skip every 2.  I know that you can do this with a 
    while loop in Ruby, but this is also a nice option to have.  
    
    But aside from that and minor differences in syntax and method names, they are 
    both object-oriented languages, and all of the logic is the same.  

2. Was some of your Ruby knowledge solidified by learning another language? 
If so, which concepts?
    Yes, the concepts in Ruby were solidified.  They have the same logic for variables, 
    math operators, arrays, objects(which are like hashes), functions(which are exactly 
    the same as methods), flow control and looping, and scope of variables.  

3. How do you feel about diving into JavaScript after reading these chapters?
    I've always been comfortable with JS, but after re-reading these chapters, it was 
    a nice review! ^_^
*/