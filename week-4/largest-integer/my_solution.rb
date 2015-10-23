# Largest Integer

# I worked on this challenge [by myself; because this is a solo challenge].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

=begin
Pseudocode
    Input = array of integers
    Output = largest integer

    Step 1: get user input (array of integers, called "list_of_nums").
    Step 2: make a variable to hold results -- "largest".
    Step 3: set largest equal to first integer of "list_of_nums"
    Step 4: UNTIL end of the array is reached: compare "largest" to next 
        number in the array.  
    Step 4.1: IF the next number is larger than the number in "largest", 
        replace "largest" with the next number.
    Step 5: return the result of largest.
=end


# Your Solution Below
# initial solution
def largest_integer(list_of_nums)
  # Your code goes here!
  largest = list_of_nums[0]

  list_of_nums.each { |number|
    if number > largest
        largest = number
    end
  }

  return largest
end

# refactored solution
def largest_integer(list_of_nums)
  list_of_nums.sort.pop # trying out implicit returns
end