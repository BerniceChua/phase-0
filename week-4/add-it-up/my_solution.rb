# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Shea Munion].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: sum from the array of numbers
# Steps to solve the problem.

=begin
Step 1: get user input (array of numbers).
Step 2: make a variable to hold results -- "sum".
Step 3: Until end of the array is reached: get 1 number 
in the array & add it to next one, and the result gets stored.
Step 4: return the sum.
=end

# 1. total initial solution
def total(number_array)
    traversal_length = number_array.length - 1
    sum = 0

    for num in 0..traversal_length
        sum += number_array[num]
    end

    return sum
end

# 3. total refactored solution

def total( number_array )
    return number_array.reduce(:+)
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of words
# Output: complete grammatically correct sentence from the array of words.
# Steps to solve the problem.

=begin
Step 1: Get user input (array of words).
Step 2: Make a variable to hold results -- "sentence" (a string).
Step 3: Get 1st word aka the 1st element, and capitalize it.
Step 4: For each word in the array, add it to the sentence.
Step 5: Return results.
=end

# 5. sentence_maker initial solution
def sentence_maker(word_array)
    traversal_length = word_array.length - 1
    first_word = word_array[0].capitalize
    sentence = first_word

   for word in 1..traversal_length
        sentence += " #{word_array[word]}"
    end

    return sentence + "."
end

# 6. sentence_maker refactored solution
def sentence_maker(word_array)
    return word_array.join(" ").capitalize + "."
end
