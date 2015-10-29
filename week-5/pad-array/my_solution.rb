# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

=begin
# What is the input?
INPUT = array

# What is the output? (i.e. What should the code return?)
output for pad = a different modified array, 
    but original array is unchanged
output for pad! = the input array, but modified

# What are the steps needed to solve the problem?

for pad
Step 1: get inputs:
    1 array -- called "array"
    1 integer (total # of elements in array) -- called "min_size"
    OPTIONAL: 1 argument for what we will use to fill out array
        (if not specified, default = nil [the actual value of nil, not a String that says "nil"])
Step 2:
    make new variable to hold results array -- called "copy"
Step 3:
    check if length of "array" is smaller than or equal to min_size
Step 3.1
    if min_size is smaller than or equal to the lenght of "array", return "copy".
Step 3.2
    if "min_size" is larger than length of "array", pad "copy" of array with "value"
        how?
        Step 3.2.a:
            if "value" is NOT specified, put nil as padded elements
        Step 3.2.b:
            if "value" IS specified, put value of "value" as padded elements

=end


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
end


# 3. Refactored Solution



# 4. Reflection
