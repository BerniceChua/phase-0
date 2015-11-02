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



# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    # code goes here
  end

  def sides
    # code goes here
  end

  def roll
    # code goes here
  end
end



# 3. Refactored Solution







