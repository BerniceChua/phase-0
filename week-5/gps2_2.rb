# gps2_2.rb

# I worked on this challenge [with: Gregory Wehmeier]

# I spent 2 hours on this challenge.

# Release 1
=begin

#Create a new list
#INPUT: list name (string)
#OUTPUT: empty hash
DEF method create_list
Initialize a new, empty hash
END
=end
def new_list # why is that? :-)
  Hash.new
end

my_list = new_list()
p my_list


=begin
#Add an item with a quantity to the list
#INPUT: grocery_item(string), num_item(integer)
#OUTPUT: Hash that contains the item 
DEF method add_item
add grocery_item and num_item as key/value pair to hash
END
=end
def add_item(list_name, item_name, qty)
  if list_name.has_key?(item_name)
    return list_name
  end
  
=begin
  list_name[item_name] = qty # implicit return; return the qty that you assigned to the hash
  list_name
=end
end

add_item(my_list, "Lemonade", 2)
add_item(my_list, "Tomatoes", 3)
add_item(my_list, "Onions", 1)
add_item(my_list, "Ice Cream", 4)
p my_list





# my_list = create_list
# my_list.include?("apples")
#   dont do anything
# else 
#   my_list = add_item(my_list, "apples",2)

# {}.methods <-- like this :-)


=begin
#Remove an item from the list
#INPUT: name of item to remove
#OUTPUT: Hash less that item
DEF method remove_item
remove grocery item from hash
END
=end
def remove_item(list_name, item_name)
  if list_name.has_key?(item_name) == false
    return "#{item_name} does not exist in this list."
  end
  
  list_name.delete(item_name)
  
  list_name
end

p remove_item(my_list, "Lemonade")




=begin
#Update quantities for items in your list
#INPUT: grocery_item, new qty
#OUTPUT: hash with updated amounts
IF new qty == old qty, alert user
DEF method update_qty
update item amounts
END
=end
def change_quantity(list_name, item_name, qty)
  if list_name.has_key?(item_name) == false
    return "#{item_name} does not exist in this list.  Add the item first."
  end
  
  list_name[item_name] = qty
  list_name
end

p change_quantity(my_list, "Ice Cream", 1)



=begin
#Print the list
#INPUT: none
#OUTPUT: list of grocery items with their quantities beside them
DEF method print_list
END
=end
def display_grocery_list(list_name)
  line_width = 15

  formatted_display = "Item".ljust(line_width) + "Quantity\n\n"
  list_name.each do |key, value|
    # called string interpolation " #{var_name} " :-)
    formatted_display += "#{key}:".ljust(line_width) + " #{value}\n"
  end
  formatted_display
end

puts display_grocery_list(my_list)



=begin

Release 5: Reflect
On your own, add a commented reflection section to your 
gps2_2.rb file. Answer the following questions in your reflection:

1. What did you learn about pseudocode from working on this challenge?

    From working on this challenge, I learned that if a method is simple 
    enough, and does only 1 thing, the pseudocode does not necessarily 
    need to be so long and complicated.  

    Also, before this, I try as much as possible to make pseudocode as 
    if I didn't have a computer and I was giving the instructions of 
    how to do something to another person.  But sometimes, it was 
    difficult to express what we wanted without unavoidably using 
    some technical jargon (for example, in the above pseudocodes, we 
    used "hash" several times.)

    On the other hand, we still need to be careful about the wording, 
    because it would confuse others.  (That's specifically the feedback 
    that I got from this, when I used "iterate", because I could not 
    think of a synonym for it at the time.  The answer to that is to "go 
    through each item one by one sequentially in the same order".)

2. What are the tradeoffs of using Arrays and Hashes for this challenge?

    We decided to use a hash, wherein the keys were the individual 
    grocery items, and the values were the quantity of each item.  

    We chose to do it this way, because: 

      a) The alternative of using an array would have been messier and would 
      have involved lots of nested for-loops.  

      If we were to do this array-style, then it would look like this:
      mode_array = [[unique_element_1, 5], [unique_element_2, 2], [unique_element_3, 4], ...]

      (wherein the inside arrays represented each element; element zero of the 
      inside arrays were the unique elements, and element 1 of the inside 
      arrays were the number of times those unique elements were encountered.)

      b) As seen from the example above, if we used an array and we needed to 
      add 1 to unique_element_4, then the array would need to have been called 
      and iterated until we reached `mode_array[3][1]`.  That's inefficient, 
      computationally-expensive, and prone to errors.  

    With a hash, it is easier to change the data, because we don't have to 
    do either of the above.  We just need to find the key, so we can change 
    the value associated with it.  

    Arrays are easier to use for if the order matters, since the elements 
    are stored linearly/sequentially.  An array allows its elements to be 
    randomly accessed, as long as the index of that element is known 
    beforehand.  But in our case, we don't know which index the grocery item 
    would be at, so it does not work for this purpose.  

    The drawback of not using an array is that arrays allow you to do this:
      my_array = ["alpha", "bravo", "charlie", "delta", "echo", "Alpha"]

      if my_array[i+1].length > my_array[i].length
        compared_word = my_array[i+1]
      end

    In the example, I can compare 2 elements easily because I know the 
    index number of the next one (it's always +1 of my current index), 
    but that cannot be done with hashes.  

    if my_array[0] == my_array[5]
    # comparing Strings "alpha" and "Alpha"
    # will return false, because capital A is different than small "a".
      p "These Strings are equal."
    end

    In this example, I know that "Alpha" was in index 5.  So I could compare 
    it to what's in index 0 easily this way.  

    So the main convenience of using Arrays is that if you know the 
    index number, but not the element itself, using an Array is easier.  

    The main convenience of using Hashes is if you don't know its position, 
    but you know what the element's key is called/named, then accessing 
    this element of a Hash is easier.  

3. What does a method return?

    There are 3 ways that Ruby knows what to return in a method:
        - There is a line of code that starts with `return`.  Whenever Ruby 
        sees this, it will evaluate the code, create output, then discontinue 
        running the program. 
        
        - `p` returns the evaluated code AND print to the console, but this 
        does not discontinue running the program like `return`. 

        - Ruby has a thing called "implicit return", wherein the last line of 
        code in the method's body will be returned as the result of the method.

    Ruby methods return whatever is passed into those.  They include 
    numbers (integers and floats), strings, booleans, arrays, hashes, 
    classes, objects, and even other methods.

4. What kind of things can you pass into methods as arguments?

    All kinds of things can be passed into methods as arguments.  

    They include numbers (integers and floats), strings, 
    booleans (true or false), nil, arrays, hashes, variables, classes, 
    objects, and even other methods (this is called a "lambda" in Ruby).

5. How can you pass information between methods?

    Information can be passed between methods in these ways:

    a) Passing information INTO a method:
      1) When calling a method, this is done through arguments (the 
      things in the parentheses when calling a method)

        method_name(arg1, arg2, arg3)

      2) Within the body of defining a method itself: 
      if this method is inside another method or inside a class or 
      inside a .rb file, and it inherits access to whatever 
      variables its parent has access to.

        MY_CUSTOM_CONSTANT = "Peking Duck"

        def total_cost(price, number)
          price * number
        end

        def number_of_orders(price, number)
          return "I want to order #{number.to_s} orders of #{MY_CUSTOM_CONSTANT}.  The total cost is $#{total_cost(price, number).to_s}."
        end

        p number_of_orders(40, 2)

      In this example, MY_CUSTOM_CONSTANT is outside the body of our 
      method, but the method still has access to it because it inherited 
      access to it.  Also, "total_cost" was called inside the method, so 
      it had access to it as well.

    b) Passing information OUT OF a method:
      This is done through returning the result from a method, detailed in 
      #3 above.

      There are 3 ways that Ruby knows what to return in a method:
        - There is a line of code that starts with `return`.  Whenever Ruby 
        sees this, it will evaluate the code, create output, then discontinue 
        running the program. 
        
        - `p` returns the evaluated code AND print to the console, but this 
        does not discontinue running the program like `return`. 

        - Ruby has a thing called "implicit return", wherein the last line of 
        code in the method's body will be returned as the result of the method.

    c) The third way is to put another method into the argument of our method:
    Example:
      def seeded_random_number_gen(seed_number)
        Random.new(seed_number).rand(500.0)
      end

      my_seeded_random = seeded_random_number_gen(123)

      def silly_method(total, multiplier)
        return total * multiplier
      end

      "silly_method" can be called either of these ways:
        silly_method(8, my_seeded_random)

        or

        silly_method(8, seeded_random_number_gen(123))

      and both would have the same result.

6. What concepts were solidified in this challenge, and what concepts are 
still confusing?

  The newest concept that I learned here is how to create a new Hash from 
  INSIDE a method, and have this newly created Hash PERSIST outside a 
  method.  To create a new Hash the usual way, it's either:
  empty_hash = Hash.new
  or
  empty_hash = {}

  If that is inside a method, this does NOT work:
    def new_list(name_you_want_to_give_your_hash)
      name_you_want_to_give_your_hash = Hash.new
    end

    my_list = new_list()
  Because it every time I want to access "my_list", it will create a new 
  hash (Persistence Issue).

  To create a new hash FROM INSIDE a method, it needs to be done this way:
    def new_list
      Hash.new
    end

    my_list = new_list()

  A concept that still confuses me is when I refactor, sometimes this works:
    def welcome(address)
      return "Welcome to California" if address.include? "CA"
          
      return "You should move to California"
    end

    or 

    def good_guess?(number_answer)
      return true if number_answer == 42
          
      return false
    end

    or 

    def factorial(number)
      return 1 if number == 0 || number == 1

      return (2..number).to_a.reduce(:*)
    end

    or

    input_array.each { |variable|
      mode_hash[variable] = 1 if !mode_hash.has_key?(variable)

      mode_hash[variable] += 1
    }

  But in this instance it didn't work, so it had to be done like this:
    input_array.each { |variable|
        mode_hash[variable] += 1 if mode_hash.has_key?(variable)
            
        mode_hash[variable] = 1 if !mode_hash.has_key?(variable)
    }

  When is it ok to refactor if statements the 1st way instead of the 2nd way?

=end