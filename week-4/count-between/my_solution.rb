# Count Between

# I worked on this challenge [by myself; because this is a solo challenge].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

=begin
Pseudocode
    Inputs: 
        1) array of integers
        2) an integer for the lower bound
        3) an integer for the upper bound
    Output = total count of numbers from array that satisfy these conditions:
        bigger than or equal to the lower bound
        AND
        smaller than or equal to the upper bound

    Step 1: get user inputs (array of numbers, the lower bound, and the upper bound).
    Step 2: check if inputs are valid.
    Step 2.1 if there is no array or the upper bound is smaller than the lower 
        bound, return Zero.
    Step 3: make a variable to hold total count of "numbers_between".
    Step 3.1: set "numbers_between" equal to 0 (Zero).
    Step 4: FOR EACH number in the array: check if the number satisfies these conditions:
        bigger than or equal to the lower bound
        AND
        smaller than or equal to the upper bound
    Step 4.1: IF this_integer satisfies the conditions, 
        add 1 more to the total count of numbers_between.
    Step 5: return the total count of numbers_between.
=end


# Your Solution Below
# initial solution
def count_between(list_of_integers, lower_bound, upper_bound)
    # Your code goes here!
    return 0 if list_of_integers.length == 0 || upper_bound < lower_bound

    numbers_between = 0

    list_of_integers.each { |this_integer| 
        if this_integer >= lower_bound && this_integer <= upper_bound
            numbers_between += 1
        end
    }

   return numbers_between
end

# refactored solution
def count_between(list_of_integers, lower_bound, upper_bound)
    return 0 if list_of_integers.length == 0 || upper_bound < lower_bound

    return list_of_integers.count { |number| number >= lower_bound && number <= upper_bound }
end