# Die Class 1: Numeric

# I worked on this challenge [by myself, because it is a solo challenge]

# I spent [] hours on this challenge.


# 0. Pseudocode

=begin

# Input: 
    number of sides of your dice

# Output: 
- rolling the dice (.roll method) gets a random number between 1 and the 
    total number of sides of the dice (inclusive)
- getting the number of sides (.sides method) returns the total number of 
    sides on your dice.

# Steps:

Step 1: 
    Get the total number of sides from the user.
Step 2: 
    IF the total number of sides is LESS than 1, give an error message, called 
    "ArgumentError"
Step 3: 
    When the user asks for the number of sides of the dice, the dice will give 
    the number of sides.
Step 4:
    When the user rolls the dice, the dice will give a randomly selected 
    number between 1 and the total number of sides of the dice (inclusive).

=end


# 1. Initial Solution

class Die
  @@min_number_of_sides = 1

  def initialize(sides)
    # code goes here
    if sides < @@min_number_of_sides
        raise ArgumentError
    end

    @sides = sides
  end

  def sides
    # code goes here
    @sides
  end

  def roll
    # code goes here
    pseudo_random = Random.new

    pseudo_random.rand(1..sides)
  end
end


# 3. Refactored Solution
=begin
Not really "refactored", because cannot do that without adding 
more unnecessary code.  
But the code is more corrected according to good coding 
standards in Ruby.
=end

class Die
  @@min_number_of_sides = 1

  def initialize(sides)
    # code goes here
    @sides = sides

    check_minimum_number_of_sides
  end

  def sides
    # code goes here
    @sides
  end

  def roll
    # code goes here
    pseudo_random = Random.new

    pseudo_random.rand(1..sides)
  end

  private

  def check_minimum_number_of_sides
    raise ArgumentError if sides < @@min_number_of_sides
  end

end


# 4. Reflection

=begin

Release 5: Reflect
Create a commented-out reflection section in your my_solution.rb file to 
answer the following questions in:

1. What is an ArgumentError and why would you use one?

    ArgumentError is from the Ruby Exception Class, which spits out an 
    error message if the wrong number of arguments/parameters are put 
    into a method.  This error message comes outonly if the code does not 
    provide a more specific error message from the Exception Class.  

2. What new Ruby methods did you implement? What challenges and successes did 
you have in implementing them?

3. What is a Ruby class?

    A Class (in Ruby or in any object-oriented language) is like a 
    blueprint.  It's written only once, and from this, I can make as 
    many Objects as I want.  

4. Why would you use a Ruby class?

    I would use a Ruby Class so I don't have to repeat writing a lot of 
    methods that can work for a given Class of Objects.  

5. What is the difference between a local variable and an instance variable?

    Local variables can only be used inside the scope/block that they live in, 
    and they are named with only small letters, underscores, and numbers in 
    their variable names.  Local variables stop existing outside of their scope.  

    Instance Variables are scoped to the Class that they instantiate, so they 
    are accessible by any methods in that Class.  Instance variables are 
    created when the Object is created, and keeps the value between method calls.  
    This means that the values of an Instance Variable exist as long as the method
    exists.  

    The name of the Instance Variable has "@".  Example: "@my_variable".

6. Where can an instance variable be used?

    Instance Variables can be used/access by any methods that belong to its Class.  
    Instance variables are created when the Object is created, and keeps the value 
    between method calls.  This means that the values of an Instance Variable exist 
    as long as the method exists.  

=end