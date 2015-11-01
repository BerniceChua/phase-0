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
    reversed_array = number.to_i.to_s.split("").reverse
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

def separate_comma(number)
    number_array = number.to_i.to_s.split("")
    commaized = []

    current_digit = number_array.length - 1
    counter = 1
    while current_digit >= 0
        commaized.unshift(number_array[current_digit])

        if ((counter) % 3 == 0) && (current_digit - 1 >= 0)
            commaized.unshift(",")
        end

        counter += 1
        current_digit -= 1
    end

    return commaized.join
end


# 2. Refactored Solution

def separate_comma(number)
    number_array = number.to_i.to_s.split("")
    commaized = []

    while number_array.length != 0
        commaized.unshift(number_array.pop(3))

        if (number_array.length != 0)
            commaized.unshift(",")
        end
    end

    commaized.join # implicit return
end


# 3. Reflection

=begin

Release 5: Reflect
In the reflection section of your my_solution file, answer the following 
questions (make sure everything in this section is commented out in the file).

1. What was your process for breaking the problem down? What different 
approaches did you consider?

    First, I thought about the general idea of what I want to achieve, then 
    I think about how I would solve it in real life if I were not using a 
    computer.  This way, the pseudocode and the code are more of "models" or 
    "representations" of what would happen in real life if the instructions 
    were done step-by-step.  

    At first, I thought I can do a for-loop going backwards, since that kind 
    of for-loop is available in other languages like JavaScript, Perl, C++, 
    Java, PHP, etc.  

    The for loop is like this (JavaScript Style):

    for (var counter = number_array.length; counter >=0; counter--) {
        /* code here */
    }

    or

    for (var counter = number_array.length; counter >=0; counter -= 3) { // goes backwards every 3 instead of every 1
        /* code here */
    }

    But I could not find it in Ruby Docs, so I just used a while loop for the 
    sake of time.  (That's why the pseudocode say "FOR" instead of "WHILE".)

    But aside from that, my general idea was the same.  The code that I used 
    for the initial solution was very similar to what I would have done if I 
    were programming in C++ or Java.  

2. Was your pseudocode effective in helping you build a successful initial solution?

    Yes, it helped me because when I thought of the problem, I did not think "How do 
    I put commas between numbers every 3 digits?" (which is the overall problem).  I 
    thought of each step, so I already visualized what the individual steps would 
    look like when I started coding.  

3. What Ruby method(s) did you use when refactoring your solution? What difficulties 
did you have implementing it/them? Did it/they significantly change the way your code 
works? If so, how?

    When I refactored the solution, the built-in Ruby methods that were different from 
    what I used in the initial solution were ".unshift()" and ".pop()".  Which was 
    disappointing, because I thought that I could get to use something newer or more 
    different.

    Coding the solution itself was not difficult.  What was difficult was thinking 
    "Is this refactored enough?  It STILL looks too long."  So I spent a lot of 
    time looking at Ruby Docs to make sure that there was no other more elegant 
    alternative to what I did.  

    The refactored solution changed a little bit from the original, because I did 
    not need to reverse the Array of numbers.  Since ".pop(3)" already allowed me to 
    get the last 3 elements (which correspond to the last 3 digits), it also changed 
    what I used to iterate in the while-loop, and I didn't need to put the 
    if-statement to make sure that the commas only get added ONLY IF the code has 
    passed 3 digits AND there are no more digits left.  

4. How did you initially iterate through the data structure?

    Initially, I iterated backwards through the data structure (through 
    .reverse), because I thought that it's how people figure out where to 
    draw the commas, when they write numbers in real life, if they are not 
    sure how many digits there are supposed to be (or at least I do it that way).  

    In the alternative initial solution, I tried iterating forwards, but there are now 
    2 extra lines of code to make it work (although each line is shorter).  So I can't 
    tell if that alternative solution is better or worse than the original.  

5. Do you feel your refactored solution is more readable than your initial solution? Why?

    I think it is readable to me now, only because I know what those built-in methods 
    mean.  So the code looks really nice and clean, since there are less lines, less 
    things to edit, and less points of failure.  

    But if it were my first time learning Ruby and looking at those built-in methods, the 
    refactored solution might have been not as readable to me because I wouldn't have 
    understood it.  The longer version would have been more readable just because I can 
    follow where the logic is going, unlike the built-in methods where the logic is hidden, 
    and "black-boxed".  

=end