# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.


# Pseudocode

=begin
# Input: 
    list of labels on the die - array of strings called "labels"
# Output: 
    IF Die#roll is called:
        -   output is the string at that index in the array.
    IF Die#sides is called:
        -   it will return the total number of size based on
        the number of elements in the array.

# Steps:
    IF a new instance -- "Die.new()" -- is called/created, it will: 
    INITIALIZE:
        Step 1: it takes in "labels" (list of labels on the 
            die, an array of strings)
        Step 2: it checks if the array "labels" is not empty.
            Step 2.1: IF "labels" does not contain anything,
                RAISE "ArgumentError"
            Step 2.2: IF  "labels" is not empty, 
                ASSIGN "labels" to the "@labels"
                - it will return one of the strings from the input array

    IF Die#roll is called:
        Step 1: create a random number between: 
            - 0 (inclusive) and 
            - the number of sides on the dice (exclusive)
        Step 2: use this random number to randomly select an 
            index number.
        Step 3: output the string at that index in the array.

    IF Die#sides is called:
        -   it will return the total number of size based on
        the number of elements in the array.
    

=end


# Initial Solution

class Die
  def initialize(labels)
    if labels == [] || labels.nil?
        raise ArgumentError
    end

    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    pseudo_random = Random.new

    @labels[pseudo_random.rand(0...sides)]
  end
end


# Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError if labels == [] || labels.nil?

    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels[Random.new.rand(0...sides)]
  end

end


# Reflection

=begin

On your own, create a commented section in your my_solution.rb file and 
write a (or create a video) reflection that answers the following questions:

1. What were the main differences between this die class and the last one you 
created in terms of implementation? Did you need to change much logic to get 
this to work?

    The 2 main differences between this one and the original was that: 
    a) it takes in an array (with the names of the sides) as 
        an input, instead of a number.  
    b) it checks whether or not the array is empty or there's no 
        argument, unlike the original which only checks if the dice 
        has less than 1 side.

    I did not need to change much logic to get this to work.  I basically 
    copy-pasted the originals and only changed some small parts.  But 
    the only thing that had major changes was the error checking, because 
    I could not figure out how to put it inside its own method without 
    making the code more complicated than it needs to be.  That's why in 
    the refactor of this, it doesn't have the error checking under the 
    "private" or "helper" methods.  

2. What does this exercise teach you about making code that is easily 
changeable or modifiable? 

    This exercise taught me that making code that is easily changeable 
    or modifiable is AWESOME!!!!  Because if requirements of the code 
    change for whatever reason, it's easy to fix.  

3. What new methods did you learn when working on this challenge, if any?

    I didn't use any new methods for this one than the original one.  

    Though I DID learn that Random.new can just be attached to .rand(0...sides) 
    without needing to be in its own variable like in the un-refactored code.  

4. What concepts about classes were you able to solidify in this challenge?

    In this challenge, my knowledge was solidified that anything with "@" in 
    front of its variable name (basically the Instance Variables) can be 
    accessed ANYWHERE in the class or its instances, even though they are not
    in the same code block as where it was first declared.  

=end