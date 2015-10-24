# Good Guess

# I worked on this challenge [by myself, because the description said "(not as good for pairing)"].

=begin
Pseudocode

Inputs = an integer value (I'll call it 'number_answer')
Output = a boolean (true if answer matches 42, false if not)

Step 1: get input
Step 2: check if answer matches 42
  Step 2.1: IF number_answer is the same as 42, then program returns true.
  Step 2.2: return false otherwise.
Step 3: return output
=end

# Your Solution Below

# initial solution
def good_guess?(number_answer)
    if number_answer == 42
        return true
    else
        return false
    end
end

# initial solution
def good_guess?(number_answer)
    return true if number_answer == 42
        
    return false
end

# refactored solution
def good_guess?(number_answer)
    if number_answer == 42 then true else false end
end

# refactored solution
def good_guess?(number_answer)
    number_answer == 42 ? true : false
end