# First Ruby Review

# I worked on this challenge [with: Darius Atmar].
# This challenge took me [1.5] hours.

# Pseudocode
# INPUT a number
# OUTPUT True/False

# define Fibonacci sequence function that takes in a number

# 0 step: IF number == 1 number is in Fibonacci sequence
# 1 Start with two variables sum and next_number
# 2 variable first_number is zero
# 3 next_number equals 1
# 4 sum = first_number + next_number 
# 4.5 put sum into array called fibonacci_numbers
# 5 IF number == sum, then this is in Fibonacci sequence,
#   ELSE move to step 6
# 6 replace first_number with next_number, and next_number with sum
# 7 repeat steps 4 and 5 until number <= sum


# Initial Solution

def is_fibonacci?(num)
  first_number = 0
  next_number = 1
  sum = 0
  fibonacci_numbers = []

  return true if num == 1

  while sum < num do
    sum = first_number + next_number
    fibonacci_numbers << sum
    first_number = next_number
    next_number = sum
  end
  
  if fibonacci_numbers[-1] == num
    return true
  else
    return false
  end
end


# Refactored Solution

def is_fibonacci?(num)
  return true if num == 0 || num == 1

  first_number = 0
  next_number = 1
  sum = 0

  while sum < num do
    sum = first_number + next_number
    first_number = next_number
    next_number = sum
  end

  return true if sum == num
  
  return false
end


# Refactored-again Solution (separated the methods)

def fibonacci_sequencer(num)
  return num if num == 0 || num == 1

  first_number = 0
  next_number = 1
  sum = 0

  while sum < num do
    sum = first_number + next_number
    first_number = next_number
    next_number = sum
  end 

  sum
end

def is_fibonacci?(num)
  return true if fibonacci_sequencer(num) == num

  false
end


# Driver Tests
p is_fibonacci?(0)    # should return true
p is_fibonacci?(1)    # should return true
p is_fibonacci?(5)    # should return true
p is_fibonacci?(33)   # should return false
p is_fibonacci?(34)   # should return true
p is_fibonacci?(50)   # should return false
p is_fibonacci?(55)   # should return true


# Reflection

=begin

Release 2: Reflect
In the reflection section in your ruby_review.rb file, answer the following questions:

1. What concepts did you review in this challenge?

  In this challenge, we reviewed:
    - pseudocoding
    - thinking of the logic
    - flow control
    - refactoring


2. What is still confusing to you about Ruby?

  What is still confusing to me about Ruby is when I can use symbols to be what gets 
  returned by a class's method, like in the "guessing game" challenge.  


3. What are you going to study to get more prepared for Phase 1?

  To prepare for Phase 1, I will study some more about "yield", and probably scope.  
  Most definitely, I'll study how to use the variables in "for...in" to access nested 
  data structures, especially in JS because my pair and I had trouble with that.  
  I think I'll also study more about using "assert", because I didn't start using it 
  until I learned it from Dev Bootcamp.  (That was the reason I chose to practice/review 
  with it, because it is my weak spot.)  

  Aside from that, I want to study more about databases and SQL.  I feel like our 
  exposure to SQL in week 8 felt like an afterthought.  

  Also, I want more practice using JS to manipulate the DOM.  


=end