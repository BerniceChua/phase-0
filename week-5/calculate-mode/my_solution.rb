# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Trevor Newcomb (navigator)]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
=begin

# What is the input?
# an array

# What is the output? (i.e. What should the code return?)
# the most common element of the array

# What are the steps needed to solve the problem?
Step 1: get input
Step 2: make variable to hold result -- called "output_mode"
Step 3: iterate through the input array
Step 3.1: if the value of this element has NOT yet already been encountered, 
            make it a new key, and add 1 to its counter.
Step 3.2: if the value of this element has already been encountered,
            add 1 to the counter of its existing key.
Step 4: choose the key-value pair with the highest number as the value
Step 5: return the key with the highest value

=end

# 1. Initial Solution

def mode(input_array)
    output_mode = nil
    mode_hash = {}

    input_array.each do |variable|
        if mode_hash.has_key?(variable)
            mode_hash[variable] += 1
        else
            mode_hash[variable] = 1
        end
    end

    output_mode = mode_hash.values.sort

    result = mode_hash.select { |k,v| 
        v == output_mode[-1]
    }

    return result.keys
end

# 3. Refactored Solution

people = {
  :fred => 23,
  :joan => 18,
  :pete => 54
}
people.sort_by { |name, age| age }
  # => [[:joan, 18], [:fred, 23], [:pete, 54]]

# 4. Reflection