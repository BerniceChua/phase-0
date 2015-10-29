# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

=begin
# What is the input?
# Input: positive integer

# What is the output? (i.e. What should the code return?)
# Output: String-version of input, 
            but the numbers are separated by commas.

# What are the steps needed to solve the problem?
# Steps to solve the problem:

VERSION 1:
Step 1: Get user input (integer called "number").
Step 2: Make a variable to hold result -- "comma-ized".
Step 3: Transform integer into comma-ized version of input.
    How?
    Step 3.1: Split the String into individual digits (characters).
        How?
        Step 3.1.a: Convert "number" into a String.
        Step 3.2.b: Split this String-ified "number" into an Array.        
    Step 3.2: Starting at the end of the individual characters,
                FOR each set of 3 digits copy those digits and put a comma,
                UNTIL no more digits are left.
Step 4: return the comma-ized version of input.

VERSION 2:
Step 1: Get user input (integer called "number").
Step 2: Make a variable to hold result -- "comma-ized".
Step 3: Transform integer into comma-ized version of input.
    How?
    Step 3.1: Split the String into individual digits (characters).
        How?
        Step 3.1.a: Convert "number" into a String.
        Step 3.2.b: Split this String-ified "number" into an Array.        
    Step 3.2: Count the number of elements in this Array.
                IF a position is a multiple of 3:
                    add a comma to that set of digits,
                Repeat UNTIL no more digits are left.
Step 4: return the comma-ized version of input.
=end


# 1. Initial Solution




# 2. Refactored Solution




# 3. Reflection