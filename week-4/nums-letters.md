### What does puts do?

`puts` = stands for "put string"; which makes the output to appear on the console with a "new line", which means that the cursor is on the line below the output instead of beside it at the end.  

`put`s only displays the output appear on the screen, but it does not return any values.  

### What is an integer? What is a float?

`integer` and `float` are different kinds of ways that computers store numbers.  

`integer` -- also knows as "whole numbers" or "counting numbers" -- just means "numbers that can be written without a fractional component or decimal place at the end.  They can be positive or negative numbers, and also include the number 0 (Zero)."

`float` numbers have decimal places or non-whole numbers as part of them.  They are called `float` as shorthand for "floating-point".  This "floating-point" is the decimal point, aka the "radix point" or the "binary point", which separates the integer part of the number from the fractional or decimal parts of the number.  Computers don't understand the idea of "decimal places" the same way that we humans do, so when they store numbers with decimal places, it is only an approximation of a real number.  This is done in the background by storing a decimal number as a string of numbers (meaning the numbers don't have an actual numerical value, but are just characters of the individual digits) stored with "." (the point-character), then converted to binary (as prescribed and standardized by the IEEE 754 Standard).  For this reason, while `float`s have more range in terms of storing "orders of magnitude" (super-uber-large or extremely mini-micro numbers), they are not very precise.  

### What is the difference between float and integer division? 

For computers, when integers are divided, and the result has a remainder, the remainder is not recorded by the computer (since integers are only whole number) and the result will not even have a decimal place.  For example, when any odd numbered integer is divided by an even number, the result will just be the whole number without any decimal places.  Example, `35 / 34` will equal `1`.  `9 / 2` is equal to `4`.

In order for computers to store the remainder of the result and divide it, at least one of the numbers needs to be a `float`.  So `3 / 2.0` will output `1.5`.  `45.3 / -6` == `-7.55`.  `12.5 / 2.5` is `5.0` (notice how it stores the ".0" part even if mathematically, 5 is a whole number).  (This is true only in higher-level languages like Ruby or JavaScript, since lower level programming languages like C++ don't allow different kinds of numbers to interact with each other like this.)

But because `float` numbers are not very precise due to the way they are stored, we can end up with weird results like these:

When we think of `1 / (0.5 - 0.4)`, in "real life" it logically seems that (0.5 - 0.4) is equal to 0.1, so 1 divided by 0.1 should just be 10.  But the compiler would get `10.000000000000002` from `1 / (0.5 - 0.4)`.  (This was what I meant earlier by lack of precision.)  For this reason, one must be careful when doing calculations with floating-point numbers.

### How would you explain the difference to someone who doesn't know anything about programming?
