# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Luis Fernando Plas].
#
# I spent [#] hours on this challenge.

# Pseudocode
=begin
# Input: 
    Credit card # (an Integer)
# Output:
    boolean (true if valid credit card #, false if not)
# Steps:
Step 1: get input
Step 2: analyze input
  Step 2.1: check if # of digits is correct = 16 digits
  Step 2.2: split up the numbers
  Step 2.3: starting at second to the right digit, 
          multiply this digit by 2
          then move to the 2nd digit to the left (not the one next to it)
          keep moving this way to the left side until no more digits.
Step 3: add all of the digits.  
  Step 3.1 IF a number has more than 1 digit
            treat each digit as 1 separate number
  Step 3.2 IF result is divisible by 10,
          it is TRUE that this is a valid credit card #.
=end

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  attr_reader :cc_number

  def initialize(cc_number)
    if cc_number.nil? || cc_number.to_s.length != 16 || !cc_number.integer?
        raise ArgumentError("Invalid credit card number.  Please input a valid 16-digit number.")
    end

    @cc_number = cc_number
  end

  def
end



# Refactored Solution








# Reflection
