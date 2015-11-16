// JavaScript Olympics

// I paired [with Kevin Corso] on this challenge.
// Sunday, Nov. 15, 5:00pm Pacific Time

// This challenge took me [1.5] hours.


// Warm Up






// Bulk Up
function addWinCondition(athletesArray) {
  for (var i = 0; i < athletes_array.length; i++) {
    athletes_array[i].win = athletes_array[i].name + " won the " + athletes_array[i].event + ".";
  }

  return athletes_array;
};

// Driver Code:
var athletes_array = [
  {name: "Mary Waters", 
   event: "100m"},
  {name: "susie Jenkins", 
   event: "200m"}
];

console.log(addWinCondition(athletes_array));






// Jumble your words
function stringReverser(myString) {
  return myString.split("").reverse().join("");
};

console.log(stringReverser("Hello"));






// 2,4,6,8

function evensOnly(numArray) {
  var evensArray = [];

  for (var i = 0; i < numArray.length; i++){
    if (numArray[i] % 2 === 0) {
      evensArray.push(numArray[i]);
    }
   }
  return evensArray;
}

var myArray = [1,2,4,5,6,7,8,9,10];
console.log(evensOnly(myArray));


// Refactored Solution

function evensOnly(eachNumber) {
  return eachNumber % 2 === 0;
}

console.log([12, 5, 8, 130, 44].filter(evensOnly));
// filtered is [12, 130, 44]
console.log(myArray.filter(evensOnly));


// Refactored-again Solution

console.log([12, 5, 8, 130, 44].filter(function(eachNumber) {
      return eachNumber % 2 === 0;
    }
  )
);

console.log(myArray.filter(function(eachNumber) {
      return eachNumber % 2 === 0;
    }
  )
);






// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)






// Reflection
/*
Release 5: Reflect
In the reflection section of the javascript_olympics.js file, answer the following questions:

1. What JavaScript knowledge did you solidify in this challenge?
  In this challenge, our knowledge in these topics were solidified:
  - accessing & modifying nested arrays/nested objects in JS.
  - string methods.
  - how to use the "constructor" version of making a new function in JS.
  - using the "this" keyword in JS, which is the same as the "self" keyword in Ruby.  

2. What are constructor functions?
  In JS, constructor functions are functions that have the keyword "this" then "." in 
  front of the name of the local variable (example "this.myLocalVariable").  When a new
  instance of this constructor function is needed, it is called with "new".
    example:
      function Person(name, gender, dominantHand) {
        this.name = name;
        this.gender = gender;
        this.dominantHand = dominantHand;
      };
      var bernice = new Person("Bernice Chua", "female", "ambidextrous");
  Using the constructor functions is the way that JS can have pseudo-classes, and
  prototypal inheritance.  

3. How are constructors different from Ruby classes (in your research)?
  All Ruby classes need an "initialize" method.  JS constructors don't need one.  For 
  this reason, in JS, every function is potentially a constructor.  In languages that 
  have classes like Ruby, classes are special kinds of objects that create new instances.  
  JS does not have things like these, but they have prototypes.  Prototypes are objects, 
  but they don't have special methods or properties specifically associated with it.  
  Literally any object in JS can be a prototype.  

  Basically in prototype-based languages, there is no distinction between instances of 
  an object.  A good way to demonstrate these are in examples:
  # Classical Inheritance With Ruby:
  class ExampleSuperclass
    def initialize
      @my_local_variable_1
      @my_local_variable_2
    end

    def my_getter_method
      @my_local_variable_1
    end

    def my_setter_method(my_argument)
      @my_local_variale_1 = my_argument
    end
  end

  class ExampleSubclass < ExampleSuperclass  
  # the "lesser than" lets ExampleSubclass inherit from ExampleSuperclass
    def initialize
      @my_local_variable_1
      @my_local_variable_2
    end

    def some_method
      #whatever code
    end
  end
  
  # instantiating objects w/ class-based language: 
  new_thing = ExampleSuperclass.new
  another_thing = ExampleSubcleass.new


  // Prototypal Inheritance With JavaScript:
  function ExampleSuper() {
    this.myLocalVariable1;
    this.myLocalVariable2;

    this.my_getter_method = function() {
      this.myLocalVariable1;
    }

    this.my_setter_method = function(My_argument) {
      this.myLocalVariable1 = my_argument;
    }
  }
  
  var ExampleSub  = function() {
    ExampleSuper.call(this);  // this line allows inheritance from ExampleSuper

    this.someMethod {
      //whatever code
    }
  }
  ExampleSub.prototype = Object.create(ExampleSuper.prototype);

  // instantiating objects with prototype-based language:
  var new_thing = new ExampleSub;
*/