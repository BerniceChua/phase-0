# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Luis Fernando Plaz].
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
      if digit_position.even?
        digit_times_2 = @cc_number.to_s.split(//)[digit_position].to_i * 2
        
        if digit_times_2 / 10 != 0
          digit_sum += (digit_times_2 / 10) + (digit_times_2 % 10)
        else
          digit_sum += digit_times_2
        end
      else
        digit_sum += @cc_number.to_s.split(//)[digit_position].to_i
      end
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

# ccard = CreditCard.new(4408041234567901)
# p ccard.check_card

# wrong_cc = CreditCard.new(11111111111111112)
# p wrong_cc.check_card

# wrong_cc2 = CreditCard.new(1)
# p wrong_cc2.check_card


# Refactored Solution (made it Object-Oriented instead of Procedural)

class CreditCard
  attr_reader :cc_number

  def initialize(cc_number)
    raise ArgumentError.new("Invalid credit card number.  Please input a valid 16-digit number.") if cc_number.nil? || cc_number.to_s.size != 16

    @cc_number = cc_number
  end

  def check_card
    (luhn_digit_adder(@cc_number) % 10 == 0) ? true : false
  end

  private
  
  def digit_splitter(number)
    splitted_digits = []
    digits_left = number
    while digits_left > 0
      splitted_digits.unshift(digits_left % 10)
      digits_left /= 10
    end
    splitted_digits
  end

  def luhn_digit_adder(numbers_array)
    cc_digits = digit_splitter(numbers_array)

    cc_digits.each_index { |digit_position|
      if digit_position.even?
        cc_digits[digit_position] *= 2

        if cc_digits[digit_position] == 10
          cc_digits[digit_position] = 1
        elsif cc_digits[digit_position] % 10 != 0
          cc_digits[digit_position] = digit_splitter(cc_digits[digit_position]).reduce( :+ )
        end
      end
    }
    cc_digits.reduce( :+ )
  end

end


# Re-refactored Solution (made the code have fewer lines)

class CreditCard
  attr_reader :cc_number

  def initialize(cc_number)
    raise ArgumentError.new("Invalid credit card number.  Please input a valid 16-digit number.") if cc_number.nil? || cc_number.to_s.size != 16

    @cc_number = cc_number
  end

  def check_card
    (luhn_digit_adder(@cc_number) % 10 == 0) ? true : false
  end


  private

  def digit_splitter(number)
    number.to_s.split("").map { |digit|  digit.to_i }
  end

  def luhn_digit_adder(numbers_array)
    cc_digits = digit_splitter(numbers_array)

    cc_digits.each_with_index { |digit, digit_position|
      if digit_position.even?
        cc_digits[digit_position] *= 2

        cc_digits[digit_position] = 1 if digit == 10
          
        cc_digits[digit_position] = digit_splitter(cc_digits[digit_position]).reduce( :+ ) if digit % 10 != 0
      end
    }

    cc_digits.reduce( :+ )
  end

end
# my_cc = CreditCard.new(4321432143214321)
# p my_cc.check_card

# your_cc = CreditCard.new(4408041234567901)
# p your_cc.check_card

# another_cc = CreditCard.new(4408041234567901)
# p another_cc.check_card


# Reflection

=begin

Release 5: Reflect
On your own, create a commented section in your "my_solution.rb" file and 
write a (or create a video) reflection that answers the following questions:

1. What was the most difficult part of this challenge for you and your pair?

  The most difficult part of this challenge for me was trying to think 
  object-orientedly instead of procedurally, since in the first 2 weeks 
  of Ruby, we coded procedurally.  So I had to switch gears in my brain.  

2. What new methods did you find to help you when you refactored?

  When I refactored, I tried out ".each_with_index".  This made it really 
  easy because I did not need to do "cc_digits[digit_position]" each time, 
  but I can substitute it with "digit".  (But take note that it does not 
  work to reassign/change values in the array.  It still needs to be 
  "cc_digits[digit_position]" for it to work.)  

3. What concepts or learnings were you able to solidify in this challenge?

  The concept that I solidified in this challenge was trying to use object oriented 
  programming as much as possible, and by splitting up the different functions into 
  methods within a class.  I think that even though the code was slightly longer 
  because of this, I was able to re-use that part of the code again later on (this 
  is specifically the digit_splitter method, since we needed to split the original
  credit card digits, and again when we split the credit card digit that was multiplied 
  by 2 into 2 digits again).  

  Because the methods made more modular, I was able to refactor the "digit_splitter" 
  method more easily without affecting the rest of the code.  

=end