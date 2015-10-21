### What does puts do?

`puts` = stands for "put string"; which makes the output to appear on the console with a "new line", which means that the cursor is on the line below the output instead of beside it at the end.  

`put`s only displays the output appear on the screen, but it does not return any values.  

### What is an integer? What is a float?

`integer` and `float` are different kinds of ways that computers store numbers.  

`integer` -- also knows as "whole numbers" or "counting numbers" -- just means "numbers that can be written without a fractional component or decimal place at the end.  They can be positive or negative numbers, and also include the number 0 (Zero)."

`float` numbers have decimal places or non-whole numbers as part of them.  They are called `float` as shorthand for "floating-point".  This "floating-point" is the decimal point, aka the "radix point" or the "binary point", which separates the integer part of the number from the fractional or decimal parts of the number.  Computers don't understand the idea of "decimal places" the same way that we humans do, so when they store numbers with decimal places, it is only an approximation of a real number.  This is done in the background by storing a decimal number as a string of numbers (meaning the numbers don't have an actual numerical value, but are just characters of the individual digits) stored with "." (the point-character), then converted to binary (as prescribed and standardized by the IEEE 754 Standard).  For this reason, while `float`s have more range in terms of storing "orders of magnitude" (super-uber-large or extremely mini-micro numbers), they are not very precise.  

### What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
