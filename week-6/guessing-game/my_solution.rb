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
    @guess
  end

  # Make sure you define the other required methods, too
  def guess(your_guess)
    if your_guess > @answer
      @guess = :high
    elsif your_guess < @answer
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
# p new_game = GuessingGame.new(108)
# p new_game.solved?
# p new_game.guess(43)
# p new_game.solved?
# p new_game.guess(9000)
# p new_game.solved?
# p new_game.guess(100)
# p new_game.solved?
# p new_game.guess(23)
# p new_game.solved?

# p new_game_plus = GuessingGame.new(10)
# p new_game_plus.solved?
# p new_game_plus.guess(5.2)
# p new_game_plus.solved?
# p new_game_plus.guess(10.1)
# p new_game_plus.solved?
# p new_game_plus.guess(10)
# p new_game_plus.solved?


# Refactored Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
    @guess = false
  end

  # Make sure you define the other required methods, too
  def guess(your_guess)
    if your_guess > @answer
        @guess = :high
    elsif your_guess < @answer
        @guess = :low
    else
        @guess = :correct
    end
  end

  def solved?
    case @guess

    when :correct
        return true
    else
        return false
    end
  end
end
# p new_game = GuessingGame.new(108)
# p new_game.solved?
# p new_game.guess(43)
# p new_game.solved?
# p new_game.guess(9000)
# p new_game.solved?
# p new_game.guess(100)
# p new_game.solved?
# p new_game.guess(23)
# p new_game.solved?

# p new_game_plus = GuessingGame.new(10)
# p new_game_plus.solved?
# p new_game_plus.guess(5.2)
# p new_game_plus.solved?
# p new_game_plus.guess(10.1)
# p new_game_plus.solved?
# p new_game_plus.guess(10)
# p new_game_plus.solved?


# Alternate Refactored Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
    @guess = false
  end

  # Make sure you define the other required methods, too
  def guess(your_guess)
    if your_guess > @answer
      @guess = :high
    elsif your_guess < @answer
      @guess = :low
    else
      @guess = :correct
    end
  end

  def solved?
    return true if @guess == :correct
        
    return false if @guess != :correct
  end
end
# p new_game = GuessingGame.new(108)
# p new_game.solved?
# p new_game.guess(43)
# p new_game.solved?
# p new_game.guess(9000)
# p new_game.solved?
# p new_game.guess(100)
# p new_game.solved?
# p new_game.guess(23)
# p new_game.solved?

# p new_game_plus = GuessingGame.new(10)
# p new_game_plus.solved?
# p new_game_plus.guess(5.2)
# p new_game_plus.solved?
# p new_game_plus.guess(10.1)
# p new_game_plus.solved?
# p new_game_plus.guess(10)
# p new_game_plus.solved?


# Alternate Refactored Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
    @guess = false
  end

  # Make sure you define the other required methods, too
  def guess(your_guess)
    if your_guess > @answer
      @guess = :high
    elsif your_guess < @answer
      @guess = :low
    else
      @guess = :correct
    end
  end

  def solved?
    @guess == :correct ? true : false
  end
end


=begin

    The refactored versions don't look that much different from the 
    original, because at this skill level, I yet don't know how to 
    shorten or change the code to be more efficient without 
    sacrificing readability, or without breaking the code.  
    (I actualy don't like ternary operators for the reason of 
    it reducing readability.)  

=end


# Reflection

=begin

On your own, create a commented section in your my_solution.rb file and 
write a (or create a video) reflection that answers the following questions:

1. How do instance variables and methods represent the characteristics and 
behaviors (actions) of a real-world object?

    Methods represent the behaviors (actions) of a real-world object, because 
    they are some behavior or action that an object can do.  

    Instance Variables represent the characteristics of a real world object, 
    because when a real world object is created, its attributes and behaviors 
    persist as long as the object exists.  

2. When should you use instance variables? What do they do for you?

    Instance Variables should be used when you want any methods in the Class to 
    have access to it, and when you want the value of this variable to keep its
    value between method calls or exist as long as the method/instance does.  

3. Explain how to use flow control. Did you have any trouble using it in 
this challenge? If so, what did you struggle with?

    Flow control in Classes work the same way as in the procedural 
    programming version.  The only difference is that the variables in 
    classes can be class variables or instance vatiables as well as local 
    variables.  My struggle with this homework came about because there was 
    an instance variable that was supposed to get an "@" but it didn't.  The 
    error message when I ran the driver code only says: 
      "my_solution.rb:60:in `guess': wrong number of arguments (0 for 1) (ArgumentError)
        from C:/Users/Bernice/DevBootcamp/phase-0/week-6/guessing-game/my_solution.rb:63:in"
    So I was only looking at the method calls or when I defined the method, not 
    other variable names.  
    (I had forgotten that calling methods in Ruby did not need parentheses at the 
    end, unlike JS or Java or C++.  So "my_method_name" is also a valid way to 
    call methods like "my_method_name()", which is confusing because it looks like 
    a regular variable.)
    It finally got solved when I was making sure that all the Instance 
    Variables had "@" in front of them.  

4. Why do you think this code requires you to return symbols? What are the 
benefits of using symbols?

    Symbols can be processed faster so they are more efficient.  

    This is possible, because symbols are:
      1. Symbols are immutable, so they can't be altered dynamically.
      2. Symbols are unique, meaning that each symbol represents the 
          same object in the same space in memory, and has the same 
          ".object_id".  So symbols don't have constructors to make new
          ones.  They can only be referred to.  
      3. Symbols in Ruby are faster to process because Ruby has an 
          internal symbol table to represent new variables made the 
          usual way.  But using a symbol, the code can bypass this 
          "lookup" step.  
      4. Ruby will create an (almost) unlimited number of string 
          instances for all your hash keys, but will only keep one 
          copy of a symbol in memory at a time. This can really save 
          memory for your programs in the long run.

    I think this is the reason why this code requires the returns to be symbols.  
    It's not only because it's efficient for Ruby to look them up, but using 
    symbols ensures that what we are using is always the same object in the same 
    space in memory.  

=end