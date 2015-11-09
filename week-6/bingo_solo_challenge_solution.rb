# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


=begin
# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  Step 1: to pick the letter randomly...
    Since "bingo" has 5 letters and each letter represents 1 column
      pick a random number within 5
      (In this case, between 0 (inclusive) and 5 (exclusive).)
        Step 1.1: from the randomly picked number, get the corresponding letter name
          IF random number is 0, column's letter name is "B".
          IF random number is 1, column's letter name is "I".
          IF random number is 2, column's letter name is "N".
          IF random number is 3, column's letter name is "G".
          IF random number is 4, column's letter name is "O".
  Step 2: choose a random number between 0 and 100 (inclusive).  

# Check the called column for the number called.
  #fill in the outline here
  Step 1: get the letter-name of the column
    Step 1.1: get the column number that corresponds with the letter name.
      IF column is "B", get all the first elements of each row.
      IF column is "I", get all the second elements of each row.
      IF column is "N", get all the third elements of each row.
      IF column is "G", get all the fourth elements of each row.
      IF column is "O", get all the last (fifth) elements of each row.
  Step 2: get the numbers in that column
    Step 2.1 for each row in the board, 
              get the number that is in the nth element that corresponds to what we found in Step 1.
  Step 3: get output.

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  Step 3: IF one of the letters in the column matches the number called, 
          change that number into an X.

# Display a column to the console
  #fill in the outline here
    Step 2: from letter name, get the corresponding column
      IF column is "B", get all the first elements of each row.
      IF column is "I", get all the second elements of each row.
      IF column is "N", get all the third elements of each row.
      IF column is "G", get all the fourth elements of each row.
      IF column is "O", get all the last (fifth) elements of each row.
    Step 3: get output.  

# Display the board to the console (prettily)
  #fill in the outline here
  Step 1: Put each letter (B,I,N,G,O) but space them at 
          the center of their own columns
  Step 2: For each row of the bingo board, put each number but 
           space them at the center of their own columns
=end


# Initial Solution

class BingoBoard
  attr_accessor :bingo_board
  # attr_reader :call_new_bingo_number
  # attr_reader :show_bingo_number
  # attr_reader :show_column

  def initialize(board)
    @bingo_board = board
  end

  def call_new_bingo_number
    @randomly_chosen_number = randomizer(1, 101)
    @chosen_letter_column = randomizer(0, @bingo_board.length)

    [get_letter(@chosen_letter_column), @randomly_chosen_number]
  end

  def show_bingo_number
    "#{get_letter(@chosen_letter_column)} #{@randomly_chosen_number}"
  end

  def show_column
    chosen_column = []

    @bingo_board.each_index { |row| 
      chosen_column << @bingo_board[row][@chosen_letter_column]
    }
    puts "Column #{get_letter(@chosen_letter_column)} has: #{chosen_column}"

    chosen_column
  end

  def find_match
    show_column.each_with_index { |item, index|
      if item == @randomly_chosen_number
        @bingo_board[index][@chosen_letter_column] = "X"
        @found_match = true
      else
        @found_match = false
      end
    }
  end

  def confirm_match
    if @found_match == true
      p "Bingo! (#{show_bingo_number} was changed into 'X'.)"
    else 
      p "Try again."
    end
  end

  def display_board
    line_width = 5
    title = ""
    formatted_display = ""

    %W(B I N G O).each { |letter| title += letter.center(line_width) }
    
    @bingo_board.each_index { |row|
      @bingo_board[row].each { |number| 
        formatted_display += number.to_s.center(line_width)
      }
      formatted_display += "\n"
    }
    
    puts title + "\n" + formatted_display
  end


  private  # helper methods

  def randomizer(start_number, end_number)
    Random.new.rand(start_number...end_number)
  end

  def get_letter(picked_number)
    case picked_number

    when 0
      return "B"
    when 1
      return "I"
    when 2
      return "N"
    when 3
      return "G"
    when 4
      return "O"
    else
      raise ArgumentError.new("Invalid Bingo Letter.  Please try again.")
    end
  end

end


# Refactored Solution

class BingoBoard
  attr_accessor :bingo_board

  def initialize(board)
    @bingo_board = board
  end

  def call_new_bingo_number
    @randomly_chosen_number = randomizer(1, 101)
    @chosen_letter_column = randomizer(0, @bingo_board.length)

    [get_letter(@chosen_letter_column), @randomly_chosen_number]
  end

  def show_bingo_number
    "#{get_letter(@chosen_letter_column)} #{@randomly_chosen_number}"
  end

  def show_column
    chosen_column = []

    @bingo_board.each_index { |row| 
      chosen_column << @bingo_board[row][@chosen_letter_column]
    }
    puts "Column #{get_letter(@chosen_letter_column)} has: #{chosen_column}"

    chosen_column
  end

  def find_match
    if show_column.include?(@randomly_chosen_number)
      row_number = show_column.index(@randomly_chosen_number)
      @bingo_board[row_number][@chosen_letter_column] = "X"
      @found_match = true
    else
      @found_match = false
    end
  end

  def confirm_match
    if @found_match
      p "Bingo! (#{show_bingo_number} was changed into 'X'.)"
    else 
      p "Try again."
    end
  end

  def display_board
    line_width = 5
    title = ""
    formatted_display = ""

    %W(B I N G O).each { |letter| title += letter.center(line_width) }
    
    @bingo_board.each_index { |row|
      @bingo_board[row].each { |number| 
        formatted_display += number.to_s.center(line_width)
      }
      formatted_display += "\n"
    }
    
    puts title + "\n" + formatted_display
  end


  private  # helper methods

  def randomizer(start_number, end_number)
    Random.new.rand(start_number...end_number)
  end

  def get_letter(picked_number)
    case picked_number

    when 0
      return "B"
    when 1
      return "I"
    when 2
      return "N"
    when 3
      return "G"
    when 4
      return "O"
    else
      raise ArgumentError.new("Invalid Bingo Letter.  Please try again.")
    end
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

p new_game.display_board
new_game.call_new_bingo_number
p new_game.show_bingo_number
p new_game.show_column
p new_game.find_match
p new_game.confirm_match
p new_game.show_column
p new_game.display_board



#Reflection

=begin

Release 6: Reflect
On your own, create a commented section in your "bingo_solution.rb" file and 
write a (or create a video) reflection that answers the following questions:

1. How difficult was pseudocoding this challenge? What do you think of your 
pseudocoding style?

    I think that I need to change my pseudocoding style, because my pseudocoding 
    style is more fit for procedural programming than object-oriented programming.  

2. What are the benefits of using a class for this challenge?

    The benefits of using a class for this challenge is that whenever 
    a number gets "X"-ed, this state gets retained as long as this 
    instantiated object of this class exists.  

3. How can you access coordinates in a nested array?

    To access something inside a nested array, it is almost the same as 
    a regular array, where the index number is placed inside the square 
    brackets, and the starting index number is still always Zero.  And 
    depending on how deep you want to go inside, the square brackets are 
    chained together.  Like this: 
        my_sample_nested_array = ["abc", [1, 2, 3], ["d; e; f", 4, 5,  6], [7, 8, 9]]

    If I want to get "d; e; f", I will do this:
      my_sample_nested_array[2][0]
    because "d; e; f" is the inside the nested array in index 2 of my_sample_nested_array.  
    And it is the first element (at Element Zero) of that nested array that lives in index 2.  

4. What methods did you use to access and modify the array?

    Original: used ".each_with_index" to iterate through the array to find 
    the value that matched what needed to be X-ed, AND its index number.  If the 
    value matched what we are looking for, I got its index number.  
    Needed the index number because it will be used to modify that element 
    using the "nested data structures" technique of chaining square brackets 
    to reach the elements of a sub-array.  

    Refactored: used ".include?" to check if that value exists.  
    Used ".index(my_element)" to get its index number.  
    Needed the index number because it will be used to modify that element 
    using the "nested data structures" technique of chaining square brackets 
    to reach the elements of a sub-array.  

5. Give an example of a new method you learned while reviewing the Ruby 
docs. Based on what you see in the docs, what purpose does it serve, and 
how is it called?

    .include?(my_chosen_element)
        Checks if the array contains your chosen element.

    .index(my_chosen_element)
        Gets the index of where your chosen element is.

6. How did you determine what should be an instance variable versus a local 
variable?

    If a variable needs to exist as long as that instantiated object exists, and 
    it needs to be accessed by the other methods of that instantiated object, then 
    I make it an instance variable.  

    If a variable only needs to be accessed within the scope that it was created in, 
    and the other methods don't need to see it, and it should not be callable or 
    known outside the method, then I make it a local variable.  

7. What do you feel is most improved in your refactored solution?

    In my refactored solution, I used "show_column.include?(@randomly_chosen_number)" 
    instead of iterating through it like in the original one ("show_column.each_with_index { |item, index| }").  
    It appears more readable this way.  

=end