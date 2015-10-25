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
 but the opposite also works:
   multiplying 1 * 2 * ... * input_number is the same as
   multiplying input_number * (input_number - 1) * ... * 2 * 1
Step 4
Return result (the factorial)

=end

# Your Solution Below


# initial solution

def factorial(number)
    # Your code goes here
    if number == 0
        return 1
    end

    factorial = number
    for next_number in 2...number
        factorial *= next_number
        #longhand
        #factorial = factorial * next_number
    end

    return factorial
end


# another version

def factorial(number)
    if number == 0
        return 1
    end

    factorial = number
    next_number = number - 1
    while next_number >= 2
        factorial *= next_number
        #longhand
        #factorial = factorial * next_number

        next_number -= 1
    end

    return factorial
end


# refactored solution

def factorial(number)
    return 1 if number == 0 || number == 1

    return (2..number).to_a.reduce(:*)
end