# Factorial

# I worked on this challenge [with: Syema Ailia (driver), me = navigator].

=begin

input: a non negative integer
output: the factorial of the input

Step 1
Get input that accepts an integer
Step 2
if input is 0 return 1
Step 3
if the number is not yet equal to 1, subtract 1 from itself and multiply itself with this result
Step 4
Return result

=end

# Your Solution Below
# initial solution
def factorial(number)
    # Your code goes here
    if number == 0
        return 1
    end

    result = number
    for next_number in 2...number
        result *= next_number
        #longhand
        #result = result * next_number
    end

    return result
end

# refactored solution
def factorial(number)
    return 1 if number == 0 || number == 1

    return (2..number).to_a.reduce(:*)
end