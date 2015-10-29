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
Step 2: Make a variable to hold result -- "commaized".
Step 3: Transform integer into commaized version of input.
    How?
    Step 3.1: Split the String into individual digits (characters).
        How?
        Step 3.1.a: Convert "number" into a String.
        Step 3.2.b: Split this String-ified "number" into an Array.        
    Step 3.2: Starting at the end of the individual characters,
                FOR each set of 3 digits copy those digits and put a comma,
                UNTIL no more digits are left.
Step 4: return the commaized version of input.

VERSION 2:
Step 1: Get user input (integer called "number").
Step 2: Make a variable to hold result -- "commaized".
Step 3: Transform integer into commaized version of input.
    How?
    Step 3.1: Split the String into individual digits (characters).
        How?
        Step 3.1.a: Convert "number" into a String.
        Step 3.2.b: Split this String-ified "number" into an Array.        
    Step 3.2: Count the number of elements in this Array.
                IF a position is a multiple of 3 AND there's no digit to the left of it:
                    add a comma to that set of digits,
                Repeat UNTIL no more digits are left.
Step 4: return the commaized version of input.
=end


# 1. Initial Solution

def separate_comma(number)
    reversed_array = number.to_s.split("").reverse
    commaized = []

    current_digit = 0
    while current_digit < reversed_array.length
        commaized.unshift(reversed_array[current_digit])

        if ((current_digit + 1) % 3 == 0) && (reversed_array[current_digit + 1] != nil)
            commaized.unshift(",")
        end

        current_digit += 1
    end

    return commaized.join
end


# Alternate
# def separate_comma(number)
#     number_array = number.to_s.split("").reverse
#     commaized = []

#     current_digit = 0
#     while current_digit < number_array.length
#         commaized.unshift(reversed_array[current_digit])

#         if ((current_digit + 1) % 3 == 0) && (reversed_array[current_digit + 1] != nil)
#             commaized.unshift(",")
#         end

#         current_digit += 1
#     end

#     return commaized.join
# end

p separate_comma(1000)
p
p separate_comma(12345)
# p
# p separate_comma(123456)
# p
# p separate_comma(1234567)
# p
# p separate_comma(12345678)
# p
# p separate_comma(123456789)

# 2. Refactored Solution




# 3. Reflection