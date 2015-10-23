# Smallest Integer

# I worked on this challenge [by myself; because this is a solo challenge].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

=begin
Pseudocode
    Input = array of integers
    Output = smallest integer

    Step 1: get user input (array of integers, called "list_of_nums").
    Step 2: make a variable to hold results -- "smallest".
    Step 3: set smallest equal to first integer of "list_of_nums"
    Step 4: UNTIL end of the array is reached: compare "smallest" to next 
        number in the array.  
    Step 4.1: IF the next number is smaller than the number in "smallest", 
        replace "smallest" with the next number.
    Step 4: return the result of smallest.
=end


# Your Solution Below
# initial solution
def smallest_integer(list_of_nums)
  # Your code goes here!
  smallest = list_of_nums[0]
  
  list_of_nums.each { |number|
    if number < smallest
        smallest = number
    end
  }

  return smallest
end

# refactored solution
def smallest_integer(list_of_nums)
    list_of_nums.sort.shift # trying out implicit returns
end