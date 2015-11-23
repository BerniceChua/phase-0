# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
=begin

Step 1: if the thing that gets asserted is true, 
        this will be a condition to yield 
        (yield is a keyword that means go outside the code block).
Step 2: if the thing that gets asserted is false, 
        it will give the error message "Assertion failed!"

(The driver code has the variable name be assigned the value "bettysue"
so the first assertion was true.  But the second assertion was a 
different string called "billybob", so the assertion was false, 
and we got the error message:
"
ruby week-8/ruby_review.rb
week-8/ruby_review.rb:9:in `assert': Assertion failed! (RuntimeError)
        from week-8/ruby_review.rb:14:in `<main>'
"

=end


# 3. Copy your selected challenge here

# Re-refactored Solution of credit card challenge (made the code have fewer lines)

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



# 4. Convert your driver test code from that challenge into Assert Statements

def divider
    puts
    puts "*" * 50
end


def assert_true(actual, message)
    puts divider
    puts message
    puts actual == true || "[ERROR] Expected true, but got #{actual}."
end


def assert_false(actual, message)
    puts divider
    puts message
    puts actual == false || "[ERROR] Expected false, but got #{actual}."
end


def assert_raise_with_message(actual, message)
    raise "[ERROR] Expected ArgumentError."
end


valid_cc_message = "If valid number of digits, and everything passes, return 'true'."
valid_cc = CreditCard.new(4408041234567901)
assert_true(valid_cc.check_card, valid_cc_message)


invalid_cc_message = "If valid number of digits, but everything does not pass, return 'false'."
invalid_cc1 = CreditCard.new(1112223334445556)
assert_false(invalid_cc1.check_card, invalid_cc_message)

invalid_cc2 = CreditCard.new(4321432143214321)
assert_false(invalid_cc2.check_card, invalid_cc_message)


wrong_cc_message1 = "If there are too many digits for a credit card number, return 'ArgumentError'."
wrong_cc1 = CreditCard.new(11111111111111112)
assert_raise_error(wrong_cc1.check_card, wrong_cc_message1)

wrong_cc_message2 = "If there are too few digits for a credit card number, return 'ArgumentError'."
wrong_cc2 = CreditCard.new(1)
assert_raise_error(wrong_cc2.check_card, wrong_cc_message2)






# 5. Reflection
=begin

Release 2: Reflect
In the reflection section in your ruby_review.rb file, answer the following questions:

1. What concepts did you review or learn in this challenge?

    I reviewed the concept of assert statements and test-driven development.  


2. What is still confusing to you about Ruby?

    What is still confusing to me about Ruby is when I can use symbols to be what gets 
    returned by a class's method, like in the "guessing game" challenge.  


3. What are you going to study to get more prepared for Phase 1?

    To prepare for Phase 1, I will study some more about "yield", and probably scope.  
    Most definitely, I'll study how to use the variables in "for...in" to access nested 
    data structures, especially in JS because my pair and I had trouble with that.  
    I think I'll also study more about using "assert", because I didn't start using it 
    until I learned it from Dev Bootcamp.  (That was the reason I chose to practice/review 
    with it, because it is my weak spot.)  

=end