# Shortest String

# I worked on this challenge [by myself; because this is a solo challenge].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

=begin
Pseudocode
    Input = array of Strings (called words)
    Output = shortest word

    Step 1: get user input (array of Strings, called "list_of_words").
    Step 2: make a variable to hold results -- "shortest".
    Step 3: set "shortest" equal to first element of "list_of_words"
    Step 4: UNTIL end of the array is reached: compare "shortest" to next 
        word in the array.  
    Step 4.1: IF the next word is shorter than the word in "shortest", 
        replace "shortest" with the next word.
    Step 5: return the result of shortest.
=end


#Your Solution Below
# initial solution
def shortest_string(list_of_words)
  # Your code goes here!
  shortest = list_of_words[0]

  list_of_words.each { |word| 
    if word.length < shortest.length
        shortest = word
    end
  }

  return shortest
end

# refactored solution
def shortest_string(list_of_words)
  list_of_words.min_by { |word| word.length } # trying out implicit returns
end