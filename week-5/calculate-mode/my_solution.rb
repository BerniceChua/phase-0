# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Trevor Newcomb (navigator), Bernice = driver]

# I spent 2.5 hours on this challenge.

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
Step 3.1: IF the value of this element has NOT yet already been encountered, 
            make it a new key, and add 1 to its counter.
Step 3.2: IF the value of this element has already been encountered,
            add 1 to the counter of its existing key.
Step 4: choose the key-value pair with the highest number as the value
Step 5: return the key with the highest value

=end


# 1. Initial Solution

def mode(input_array)
    output_mode = []
    mode_hash = {}

    input_array.each { |variable|
        if mode_hash.has_key?(variable)
            mode_hash[variable] += 1
        else
            mode_hash[variable] = 1
        end
    }

    output_mode = mode_hash.values.sort

    result = mode_hash.select { |k,v| 
        v == output_mode[-1]
    }

    return result.keys
end


# alternate solution (iterative)

def mode(input_array)
    output_mode = []
    mode_hash = {}

    for variable in input_array
        if mode_hash.has_key?(variable)
            mode_hash[variable] += 1
        else
            mode_hash[variable] = 1
        end
    end

    biggest_number = 0
    mode_hash.each { |key, value|
        if value > biggest_number
            biggest_number = value
        end
    }

    mode_hash.each { |thing, blah| 
        if blah == biggest_number
            output_mode << thing
        end
    }

    output_mode
end


# 3. Refactored Solution

def mode(input_array)
    mode_hash = {}

    input_array.each { |variable|
        mode_hash[variable] += 1 if mode_hash.has_key?(variable)
            
        mode_hash[variable] = 1 if !mode_hash.has_key?(variable)
    }

    mode_hash.select{ |k,v| v == mode_hash.values.sort[-1] }.keys
end


# re-refactored solution

def mode(input_array)
    mode_hash = {}

    input_array.each { |variable|
        mode_hash[variable] = 1 if !mode_hash.has_key?(variable)

        mode_hash[variable] += 1
    }

    mode_hash.select{ |k,v| v == mode_hash.values.sort[-1] }.keys
end

# 4. Reflection

=begin

Release 6: Reflect
On your own, create a commented section in your "my_solution.rb" file and write a 
(or create a video) reflection that answers the following questions:

1. Which data structure did you and your pair decide to implement and why?

    We decided to use a hash, because the keys were the individual elements, and 
    the values were the number of times that each element was encountered.  

    We chose to do it this way, because: 

        a) The alternative of using an array would have been messier and would 
        have involved lots of nested for-loops.  

        If we were to do this array-style, then it would look like this:
        mode_array = [[unique_element_1, 5], [unique_element_2, 2], [unique_element_3, 4], ...]

        (wherein the inside arrays represented each element; element zero of the 
        inside arrays were the unique elements, and element 1 of the inside 
        arrays were the number of times those unique elements were encountered.)

        b) As seen from the example above, if we used an array and we needed to 
        add 1 to unique_element_4, then the array would need to have been called 
        and iterated until we reached `mode_array[3][1]`.  That's inefficient, 
        computationally-expensive, and prone to errors.  

    With a hash, it is easier to change the data, because we don't have to 
    do either of the above.  We just need to find the key, so we can change 
    the value associated with it.  

2. Were you more successful breaking this problem down into implementable 
pseudocode than the last with a pair?  

    We were successful in breaking down this problem into implementable 
    pseudocode.  I think that we were a bit TOO successful, because our 
    initial solution cannot be refactored without making the code longer.

    What I ended up doing was just addint the iterative solution (just for 
    the sake of showing an alternative way of solving this problem if we 
    did not have those built-in methods like .select available to us).  

    EDIT: a refactored solution came to me later, but I don't really like 
    it as much, because it seems to sacrifice readability just for the 
    sake of having fewer lines.  

3. What issues/successes did you run into when translating your pseudocode to code?

    The only issue of translating the pseudocode to code was that sometimes, we had 
    to switch the sequence of the actual code, so it's somewhat different from the 
    original pseudocode.  But the general idea was the same.  

    Aside from that, it was easy because all we had to do was test the code to 
    check if it was doing what we thought/expected it to do.  

4. What methods did you use to iterate through the content? Did you find any good 
ones when you were refactoring? Were they difficult to implement?

    Our main difficulty was making n00b mistakes, like using "=" to check for 
    equality instead of "==", and having misspellings, and forgetting what the 
    variables were supposed to be, so we iterated through the wrong ones at first.  

    But we were able to overcome those obstacles by using "puts" or "print" or 
    "p" to check the outputs, so we were able to catch our mistakes.  

    Built-in methods we used when we refactored:

    .select = it acts on an enumerable such as a hash, and returns a hash if 
        the keys or the values of its elements meet the requirements.  

    .values = it acts on a hash, and returns an array with all of its 
        values as its elements.  

    .sort = since .values returns an array, we were able to use .sort on 
        it, to sort it into ascending order.  (Because of this, we figured 
        that the last element of the array is the biggest number, so we 
        used [-1] to get the last element.)  

    .keys = it acts on a hash, and returns an array with all of its keys as 
        its elements.  

=end
