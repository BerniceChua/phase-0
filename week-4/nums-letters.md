# 4.2 Numbers, Letters, and Variable Assignment (medium)

## Release 1: Summarize

### What does puts do?
`puts` = stands for "put string"; which makes the output to appear on the console with a "new line", which means that the cursor is on the line below the output instead of beside it at the end.  

`puts` only makes the output appear on the screen, but it does not return any values.  
### What is an integer? What is a float?
`integer` and `float` are different kinds of way that computers store numbers.  

`integer` -- also knows as "whole numbers" or "counting numbers" -- just means "numbers that can be written without a fractional component or decimal place at the end.  They can be positive or negative numbers, and also include the number 0 (Zero)."

`float` numbers have decimal places or non-whole numbers as part of them.  They are called `float` as shorthand for "floating-point".  This "floating-point" is the decimal point, aka the "radix point" or the "binary point", which separates the integer part of the number from the fractional or decimal parts of the number.  Computers don't understand the idea of "decimal places" the same way that we humans do, so when they store numbers with decimal places, it is only an approximation of a real number.  This is done in the background by storing a decimal number as a string of numbers (meaning the numbers don't have an actual numerical value, but are just characters of the individual digits) stored with "." (the point-character), then converted to binary (as prescribed and standardized by the IEEE 754 Standard).  For this reason, while `float`s have more range in terms of storing "orders of magnitude" (super-uber-large or extremely mini-micro numbers), they are not very precise.  

### What is the difference between float and integer division? 
For computers, when integers are divided, and the result has a remainder, the remainder is not recorded by the computer (since integers are only whole number) and the result will not even have a decimal place.  For example, when any odd numbered integer is divided by an even number, the result will just be the whole number without any decimal places.  Example, `35 / 34` will equal `1`.  `9 / 2` is equal to `4`.

In order for computers to store the remainder of the result and divide it, at least one of the numbers needs to be a `float`.  So `3 / 2.0` will output `1.5`.  `45.3 / -6` == `-7.55`.  `12.5 / 2.5` is `5.0` (notice how it stores the ".0" part even if mathematically, 5 is a whole number).  (This is true only in higher-level languages like Ruby or JavaScript, since lower level programming languages like C++ don't allow different kinds of numbers to interact with each other like this.)

But because `float` numbers are not very precise due to the way they are stored, we can end up with weird results like these:

When we think of `1 / (0.5 - 0.4)`, in "real life" it logically seems that (0.5 - 0.4) is equal to 0.1, so 1 divided by 0.1 should just be 10.  But the compiler would get `10.000000000000002` from `1 / (0.5 - 0.4)`.  (This was what I meant earlier by lack of precision.)  For this reason, one must be careful when doing calculations with floating-point numbers.  This can be alleviated by specifying how many significant digits you want to keep, or by specifying where the computer should round off in the decimal places.  

### How would you explain the difference to someone who doesn't know anything about programming?
I would say: 
> Computers don't understand decimal numbers and fractions, so all numbers are stored as "whole numbers" by default.  These are called `integer`s.  Because computers don't understand decimals, when it divides two numbers and there is supposed to be a decimal point or fraction or remainder, that part of the number does not even get recorded.  
> In order for a computer to know that you want to keep the decimal places, the user needs to explicitly say that the calculations need to be done for the decimals.  In some programming languages, this is done by specifying that the number is a type called `float`.  In other programming languages, this can be done by explicitly putting a decimal point on at least one of the numbers in the equation.  But because computers store "decimal numbers" in a weird way, sometimes, dividing numbers of the type `float` can get funky results.  This is the same reason why sometimes decimal places give unexpected outputs in Excel.  For example, `1 / (0.5 - 0.4)` gets `10.000000000000002` instead of the expected "10" only.  To fix this, the user needs to specify how many decimal places they want as significant digits.  

## Release 2: Try it!

In section 2.5, Pine provides two great mini-challenges.

> Mini-challenges

> Using IRB or submlime, write a program that calculates and outputs the:

> Hours in a year

> Minutes in a decade

#### Hours in a year
- 1 year == 365 & 1/4 days
- 1 day == 24 hours
- Solution = 365.25 * 24
```ruby
$ irb
Switch to inspect mode.
hours_in_a_year = 365.25 * 24
hours_in_a_year = 365.25 * 24
8766.0
```
1 year has 8,766.0 hours.
#### Minutes in a decade
- 1 decade == 10 years
- From above's solution, 1 year has 8,766.0 hours.
- 1 hour == 60 minutes
- Solution = 10 * 8766 * 60
```ruby
$ irb
Switch to inspect mode.
minutes_in_a_decade = hours_in_a_year * 600
minutes_in_a_decade = hours_in_a_year * 600
5259600.0
```

# 4.2.1 Defining Variables
* https://github.com/BerniceChua/phase-0/blob/master/week-4/defining-variables.rb

# 4.2.2 Simple String Methods
* https://github.com/BerniceChua/phase-0/blob/master/week-4/simple-string.rb

# 4.2.3 Local Variables and Basic Arithmetical Expressions
* https://github.com/BerniceChua/phase-0/blob/master/week-4/basic-math.rb

# 4.2 Numbers, Letters, and Variable Assignment (medium)
## Release 7: Reflect

#### How does Ruby handle addition, subtraction, multiplication, and division of numbers?
- `+` for addition
- `-` for subtration
- `*` for multiplication
- `/` for division
- `%` for modulus
- `**` for exponents. (like `5 ** 2` means "5 raised to the second power" or simply 25)

Ruby follows the regular mathemathical order of operations PEMMDAS.  I know that the original has only one "M", but I added another because of "Modulus".  Ruby gives priority to operations inside parentheses first, then exponents.  After that, modulus, multiplication, & division are on the same tier, but whichever is written first among those 3 gets priority.  And last but not least, addition and subtraction depending on the order it was written.  If the operations are on the same "tier", for example `8 - 13 + 2`, the order goes from left to right.  

#### What is the difference between integers and floats?
`integer` and `float` are different kinds of way that computers store numbers.  

`integer` -- also knows as "whole numbers" or "counting numbers" -- just means "numbers that can be written without a fractional component or decimal place at the end.  They can be positive or negative numbers, and also include the number 0 (Zero)."

`float` numbers have decimal places or non-whole numbers as part of them.  They are called `float` as shorthand for "floating-point".  This "floating-point" is the decimal point, aka the "radix point" or the "binary point", which separates the integer part of the number from the fractional or decimal parts of the number.  Computers don't understand the idea of "decimal places" the same way that we humans do, so when they store numbers with decimal places, it is only an approximation of a real number.  This is done in the background by storing a decimal number as a string of numbers (meaning the numbers don't have an actual numerical value, but are just characters of the individual digits) stored with "." (the point-character), then converted to binary (as prescribed and standardized by the IEEE 754 Standard).  For this reason, while `float`s have more range in terms of storing "orders of magnitude" (super-uber-large or extremely mini-micro numbers), they are not very precise.  

#### What is the difference between integer and float division?
For computers, when integers are divided, and the result has a remainder, the remainder is not recorded by the computer (since integers are only whole number) and the result will not even have a decimal place.  For example, when any odd numbered integer is divided by an even number, the result will just be the whole number without any decimal places.  Example, `35 / 34` will equal `1`.  `9 / 2` is equal to `4`.

In order for computers to store the remainder of the result and divide it, at least one of the numbers needs to be a `float`.  So `3 / 2.0` will output `1.5`.  `45.3 / -6` == `-7.55`.  `12.5 / 2.5` is `5.0` (notice how it stores the ".0" part even if mathematically, 5 is a whole number).  (This is true only in higher-level languages like Ruby or JavaScript, since lower level programming languages like C++ don't allow different kinds of numbers to interact with each other like this.)

But because `float` numbers are not very precise due to the way they are stored, we can end up with weird results like these:

When we think of `1 / (0.5 - 0.4)`, in "real life" it logically seems that (0.5 - 0.4) is equal to 0.1, so 1 divided by 0.1 should just be 10.  But the compiler would get `10.000000000000002` from `1 / (0.5 - 0.4)`.  (This was what I meant earlier by lack of precision.)  For this reason, one must be careful when doing calculations with floating-point numbers.  This can be alleviated by specifying how many significant digits you want to keep, or by specifying where the computer should round off in the decimal places.  

#### What are strings? Why and when would you use them?
In computing, Strings are a composite data type (not a primitive data type like simple integer numbers or booleans) which are made up of characters enclosed in either double quotes or single quotes.  The characters include numbers, lowercase & uppercase letters, whitespace characters, and special characters like symbols.  Because Strings are not primitive data types, they have methods associated with them that let you do all kinds of things to them like get their length or count how many characters it has, or split them, or concatenate them, etc.  We would use Strings to store words, sentences, paragraphs, etc.  Sometimes we want to store numbers or symbols as Strings also because we don't want them to be evaluated or computed as numbers, like the street number in an address ("633 Folsom Street") or the number of the floor ('Floor 6') or the number on a sports jersey (Michael Jordan's "23").  Same goes with special characters.  Sometimes, we don't want the computer to evaluate them as parts of a calculation or as a keyword, but we want them merely displayed.  So `+` and `%` outside the double quotes means something very different from `"+"` and `"%"` inside double quotes.  

#### What are local variables? Why and when would you use them?
Local variables are variables that can only be accessed inside the scope or block where they live.  They are written with either an underscore in the beginning (example:  `_my_variable`) or just all lowercase letters (example: `my_variable`).  When an uninitialized local variable is referenced, it is interpreted as a call to a method that has no arguments.

#### How was this challenge? Did you get a good review of some of the basics?
I like that I learned a little more about RSpec in this challenge.  Also, I was wondering if it's overkill to use both pry debugger and RSpec at the same time.  

As for the others, yes, this was a good review of the syntax and the methods for Strings, etc.  

Also, it makes me realize that I take for granted knowing how to use `%` (modulus) and floating points or Strings, especially in the essay section where I have to explain integer division versus floating points division to a non-programmer.  It's one of those things where when it's used so often, it just seems like something that was always there and doesn't need explanation.  Like trying to describe articles like "the" and "a" and "an" to someone whose original language (like Cantonese/Mandarin/Hokkien/Hakka or Russian) does not have articles.  It is really a humbling experience.  
