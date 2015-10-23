# Concatenate Two Arrays

# I worked on this challenge [by myself, by myself; because this is a solo challenge].

=begin
Pseudocode
    Input = 2 arrays
    Output = the 2 arrays combined into 1 array.

    Step 1: get user input array.
    Step 2: make a variable to hold resulting huge array -- "combined".
    Step 3: set "combined" equal to first element of "list_of_words"
    Step 4: UNTIL end of the array is reached: compare "longest" to next 
        word in the array.  
    Step 4.1: IF the next word is longer than the word in "longest", 
        replace "longest" with the next word.
    Step 4: return the result of longest.
=end


# Your Solution Below

# initial solution
def array_concat(array_1, array_2)
    # Your code here
    array_1 + array_2  # trying out implicit return
end

# solution with built-in method
def array_concat(array_1, array_2)
    # Your code here
    array_1.concat(array_2)  # trying out implicit return
end

# long version, just for the sake of being complete
def array_concat(array_1, array_2)
    # Your code here
    combined_array = []

    array_1.each { |i| 
        combined_array.push(i)
    }

    array_2.each do |j| 
        combined_array.push(j)
    end

    return combined_array
end