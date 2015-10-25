# Valid lengths for sides of a triangle.

# I worked on this challenge [with: Sasha Tailor (navigator), me=driver].
# I worked on this challenge again [with: Natalie Polen (driver), me=navigator].

# Your Solution Below

# initial solution

def valid_triangle?(a, b, c)
    # Your code goes here!
    valid_triangle = false

    # Check that a, b, c are all greater than 0
    if a <= 0 || b <= 0 || c <= 0
        valid_triangle = false
        return valid_triangle
    end

    # Check that sum of two sides is greater than third side for all permutations
    if (a + b >= c) && (a + c >= b) && (c + b >= a)
        valid_triangle = true
    end

    return valid_triangle
end


# refactored code

def valid_triangle?(a, b, c)
  # Check that a, b, c are all greater than 0
  if a <= 0 || b <= 0 || c <= 0
    return false
  end
  
  # Check that sum of two sides is greater than third side for all permutations
  if (a + b >= c) && (a + c >= b) && (c + b >= a)
    return true
  end

  return false
end


# refactored code

def valid_triangle?(a, b, c)
  # Check that a, b, c are all greater than 0
  return false if a <= 0 || b <= 0 || c <= 0

  # Check that sum of two sides is greater than third side for all permutations
  return true if (a + b >= c) && (a + c >= b) && (c + b >= a)
  
  return false
end