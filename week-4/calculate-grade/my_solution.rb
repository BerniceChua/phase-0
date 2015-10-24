# Calculate a Grade

# I worked on this challenge [with: Aleksandra Nowak (driver), me=navigator].

=begin
Pseudocode

Inputs = an integer (called 'average')
Output = a letter grade, a String.
    "A" if average is between 100% and 90%
    "B" if average is between 89% and 80%
    "C" if average is between 79% and 70%
    "D" if average is between 69% and 60%
    "F" if average is less than 60%

Step 1: get input.
Step 2: check which letter the average corresponds to.
  Step 2.1: IF average is less than or equal to 100% and bigger than or equal to 90%, 
    THEN the grade is an "A".
  Step 2.2: IF average is less than 90% and bigger than or equal to 80%, 
    THEN the grade is a "B".
  Step 2.3: IF average is less than 80% and bigger than or equal to 70%, 
    THEN the grade is a "C".
  Step 2.4: IF average is less than 70% and bigger than or equal to 60%, 
    THEN the grade is a "D".
  Step 2.5: or ELSE IF average is less 60%, 
    THEN the grade is an "F".
Step 3: return output
=end


# Your Solution Below

# initial solution

def get_grade(average)
    if average <= 100 && average >= 90
        p "A"
    elsif average < 90 && average >= 80
        p "B"
    elsif average < 80 && average >= 70
        p "C"
    elsif average < 70 && average >= 60
        p "D"
    else average < 60
        p "F"
    end
end

# get_grade(95)
# get_grade(85)
# get_grade(70)
# get_grade(10)