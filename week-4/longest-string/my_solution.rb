# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

=begin
Pseudocode
    Input = array of Strings (called words)
    Output = longest word

    Step 1: get user input (array of Strings, called "list_of_words").
    Step 2: make a variable to hold results -- "longest".
    Step 3: set "longest" equal to first element of "list_of_words"
    Step 4: UNTIL end of the array is reached: compare "longest" to next 
        word in the array.  
    Step 4.1: IF the next word is longer than the word in "longest", 
        replace "longest" with the next word.
    Step 4: return the result of longest.
=end


# Your Solution Below

# initial solution
def longest_string(list_of_words)
  # Your code goes here!
  longest = list_of_words[0]

  list_of_words.each { |word| 
    if word.length > longest.length
        longest = word
    end
  }

  return longest
end

# refactored solution
def longest_string(list_of_words)
  list_of_words.max_by { |word| word.length } # trying out implicit returns
end