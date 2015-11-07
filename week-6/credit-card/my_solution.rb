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
    if cc_number.nil? || cc_number.to_s.size != 16
        raise ArgumentError.new("Invalid credit card number.  Please input a valid 16-digit number.")
    end

    @cc_number = cc_number
  end

  def check_card
    digit_sum = 0

    @cc_number.to_s.split(//).each_index { |digit_position| 
      print "digit_position = "
      puts digit_position

      print "@cc_number.to_s.split(//)[digit_position] = "
      puts @cc_number.to_s.split(//)[digit_position]

      if digit_position.even?
        digit_times_2 = @cc_number.to_s.split(//)[digit_position].to_i * 2
        
        print "digit_times_2 = "
        puts digit_times_2

        if digit_times_2 / 10 != 0
          digit_sum += (digit_times_2 / 10) + (digit_times_2 % 10)
        else
          digit_sum += digit_times_2
        end
      else
        digit_sum += @cc_number.to_s.split(//)[digit_position].to_i
      end

      print "digit_sum = "
      puts digit_sum
    }

    if digit_sum % 10 == 0
      return true
    else
      return false
    end
  end
end

=begin
my_cc = CreditCard.new(1111222233334444)
p my_cc.check_card
=end

# my_cc = CreditCard.new(4321432143214321)
# p my_cc.check_card

ccard = CreditCard.new(4408041234567901)
p ccard.check_card

# wrong_cc = CreditCard.new(11111111111111112)
# p wrong_cc.check_card

# wrong_cc2 = CreditCard.new(1)
# p wrong_cc2.check_card


# Refactored Solution








# Reflection
