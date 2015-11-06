# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

=begin
# Input:
    the "answer" that needs to be guessed (an integer number)

# Output:
    whether or not the guess is correct (a symbol)
    and
    whether or not the game was solved (boolean; aka true or false)

# Steps:

IF a new instance -- "Die.new()" -- is called/created, it will: 
    INITIALIZE:
        Step 1: get input - it takes 1 input/parameter:
            the "answer" that needs to be guessed (an integer number)
        Step 2: make sure that input is an integer

IF GuessingGame#guess is called:
    Step 1: get input - it takes 1 input/parameter:
            the "guess" of the answer (an integer number)
    Step 2: make sure that input is an integer
    Step 3: check whether or not the "guess" is the same as the "answer"
        Step 2.1: IF "guess" is bigger than the answer
            RETURN ":high"
        Step 2.2: IF "guess" is smaller than the answer
            RETURN ":low"
        Step 2.3: IF "guess" is the same as the answer
            RETURN ":correct"

IF GuessingGame#solved? is called:
    Step 1: (no input)
    Step 2: check whether or not the guess was correct
        Step 2.1: IF the guess was correct, 
            RETURN true
        Step 2.2 IF the guess was false, 
            RETURN false

=end


# Initial Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here

    @answer = answer
    @guess = false
  end

  # Make sure you define the other required methods, too
  def guess(your_guess)
    if @answer < your_guess
        @guess = :high
    elsif @answer > guess
        @guess = :low
    else
        @guess = :correct
    end
  end

  def solved?
    if @guess == :correct
        return true
    else
        return false
    end
  end

end

p new_game = GuessingGame.new(108)
p new_game.solved?
p new_game.guess(43)
p new_game.guess(9000)
p new_game.guess(100)
p new_game.solved?


# Refactored Solution






# Reflection

=begin

On your own, create a commented section in your my_solution.rb file and 
write a (or create a video) reflection that answers the following questions:

1. How do instance variables and methods represent the characteristics and 
behaviors (actions) of a real-world object?

2. When should you use instance variables? What do they do for you?

    Instance Variables should be used when you want any methods in the Class to 
    have access to it, and when you want the value of this variable to keep its
    value between method calls or exist as long as the method/instance does.  

3. Explain how to use flow control. Did you have any trouble using it in 
this challenge? If so, what did you struggle with?

    fdfd

4. Why do you think this code requires you to return symbols? What are the 
benefits of using symbols?

    fdfdsf

=end