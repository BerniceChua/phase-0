# Leap Years

# I worked on this challenge [with: Sasha Tailor (navigator), me = driver].

=begin
Pseudocode
  Inputs = an integer (the year)
  Output = a boolean (true if leap year, false if not)

  Step 1: get input
  Step 2: calculate leap year
    Step 2.1: IF year is NOT divisible by 4, then it is NOT a leap year.
    Step 2.2: IF year is divisible by 4 and by 100 but not by 400, then it is NOT a leap year.
    Step 2.3: IF year is divisible by 400, it is true that it's a leap year.
  Step 3: return output
=end

# Your Solution Below

# initial solution
def leap_year?(year)
  # Your code goes here!
  if (year % 400 == 0)
    return true
  elsif (year % 4 != 0)
    return false
  elsif (year % 100 == 0)
    return false
  else
    return true
  end
end

# refactored code
def leap_year?(year)
  if (year % 400 == 0)
    return true
  elsif (year % 4 != 0) || (year % 100 == 0)
    return false
  else
    return true
  end
end

# refactored code
def leap_year?(year)
    return true if (year % 400 == 0)
    return false if (year % 4 != 0) || (year % 100 == 0)

    return true
end