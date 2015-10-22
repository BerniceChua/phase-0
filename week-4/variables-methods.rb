=begin
Full name greeting: Write a program that asks for a person's first 
name, then middle, then last. Finally, it should greet the person 
using their full name.
=end
puts "What is your given name?"
first_name = gets.chomp 
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your surname?"
surname = gets.chomp

puts "Hello #{first_name} #{middle_name} #{surname}~~!!!!  ^__^"

# it "accepts a String called first_name as a given name" do
#     first_name = "Bernice Anne"
#     expect(first_name).to be == "Bernice Anne"
# end
# it "accepts a String called middle_name as a middle name" do
#     middle_name = "Wong"
#     expect(middle_name).to be == "Wong"
# end
# it "accepts a String called surname as a surname" do
#     surname = "Chua"
#     expect(surname).to be == "Chua"
# end
# it 'returns a greeting with the full name of the user' do
#     first_name = "Bernice Anne"
#     middle_name = "Wong"
#     surname = "Chua"
#     expect("Hello #{first_name} #{middle_name} #{surname}~~!!!!  ^__^").to be "Hello Bernice Anne Wong Chua~~!!!!  ^__^"
# end

=begin
Bigger, better favorite number: Write a program that asks for a 
person's favorite number. Have your program add 1 to the number, 
and then suggest the result as a bigger and better number.  (Do be 
tactful about it, though.)
=end
puts "What is your favorite number?"
favorite_number = gets.chomp.to_i

puts "You know how your favorite number can be improved?  Add 1 to it!!!  Your new favorite number is #{favorite_number + 1}."

#   it 'accepts a number as a single parameter' do
#     expect(method(:welcome).arity).to eq 1
#   end
#   it 'returns the favorite number + 1' do
#     
#     expect(welcome("a string with CA in it")).to eq "Welcome to California"
#   end
#   it 'returns "You should move to California" if the address does not contain "CA"' do
#     expect(welcome("nothing like cali in here")).to eq "You should move to California"
#   end





=begin
Release 6: Reflect

In the variables-methods.rb file you created, add a comment at the bottom and answer the following questions:

1. How do you define a local variable?

    Variables are names that contain some value, like a number (integer 
    or float), a character, or a String, or a collection (enumerable or 
    array or hash or list or dictionary) or even methods, objects, or classes.  

    Syntax to assign a value to a variable:

    favorite_food = "prime rib"
    list_of_cats = ["Wong Fei-Hong", "Yin-Yeung", "Maru", "Hana", "Ohagi", "Grumpycat", "Lil-bub"]
    dollar_to_euro_conversion = 0.9

    Anything on the left side of the equal sign is the variable name.  
    Anything on the right side of the equal sign is the assigned value.  
    (In coding, "==" (double-equals) is for expressing equality.)  

    Storing values in a variable is useful in programming, because if 
    the value is super-long and complicated, it does not need to be 
    re-typed again and again in each line of code that the value needs 
    to appear in.  Not only is this less typing to make the code cleaner 
    and more re-usable, it makes maintaining the code easier too.  For 
    example, if a change needs to be made in the value that needs to be 
    calculated or dealt with, the programmer won't need to hunt down 
    every instance of that value to change it, since the only line of 
    code that needs to be changed is the variable.  For example, the 
    exchange rate of dollars to euros changes, and I have a bunch of 
    calculations in my code in different places involving the exchange 
    rate.  I already assigned the value to `dollar_to_euro_conversion`, 
    and in the rest of the code, I put `dollar_to_euro_conversion` 
    instead of 0.9.  So I don't need to change 0.9 in the code and 
    possibly miss something.  I only need to re-assign the value at 
    `dollar_to_euro_conversion` where I declared the variable earlier,
    and the value gets changed everywhere else too.  

    Local variables are variables that can only be accessed inside the 
    scope or block where they live. They are written with either an 
    underscore in the beginning (example: _my_variable or __abc__) or 
    just all lowercase letters (example: my_variable). They can be called
    anything as long as it's not the same as a keyword or reserved word.  
    When an uninitialized local variable is referenced, it is interpreted 
    as a call to a method that has no arguments.  

    Ruby convention is to use underscores instead of camelCase to 
    separate words in a variable name with more than 1 word.  

2. How do you define a method?

    A method in Ruby is a reusable block of code that is some kind of 
    action associated with an object, that the object can do.  Methods 
    are great ways to organize the code because if some code needed to 
    gets changed and something goes wrong, it is much easier to see 
    where something went wrong.  By assigning specific tasks to separate 
    methods -- "separation of concerns" -- the program less redundant and 
    the code is more reusable in a single program without needing to 
    rewrite it each time, and you can even use that method in another 
    program.

    To create a method, these are the important syntax to have in a 
    .rb file:

    def method_name
        # Code lives here!
    end

    There's another version where the method accepts a specific 
    number of arguments:
    
    def method_name(arg1, arg2, arg3)
        # Code lives here!
    end

    If you want the user to put as little or as many arguments:
    
    def method_name(*args)
        # Code lives here!
    end

3. What is the difference between a local variable and a method?

    A local variable is can only be accessed inside the scope or 
    block where it lives.  A method can be accessed even outside 
    the .rb file where it lives, as long as some code is written 
    somewhere else to import the method from the external file.  

    A local variable is what something is called, and a methods 
    is what an object can do (as long as it exists for that object).  

    A method can contain one or more local variables.  But a local
    variable can only be assigned one method at a time.  

4. How do you run a ruby program from the command line?

    ruby filename.rb
    or
    ruby path/to/filename.rb

5. How do you run an RSpec file from the command line?

    rspec filename_of_spec.rb
    or
    rspec path/to/filename_of_spec.rb

6. What was confusing about this material? What made sense?

    The part that confused me was something that was mentioned 
    in the video for "DBC Talks - Introduction: Pseudocode".  
    The video said that, at this point we should try to solve 
    the coding problems first without using the built-in 
    methods/built-in functions of Ruby.  

    Should we still do this?  On one had, not using the 
    built-ins will teach us more.  But on the other hand, 
    especially when pair-programming, sometimes the pair 
    wants to use the built-ins and mainly there's not a 
    lot of time to do the pair programmings.  And at the 
    same time if I don't use the built-ins does this mean 
    that I'm not very proficient in Ruby?  

    The only solution I can think for that is to put both the long 
    version and the version with a built-in function at the same 
    file.  Is this the right thing to do?      

    There's a question I have from "Learn To Program, 2nd Edition".  
    One part mentions that Ruby can be used to format positioning, 
    like ljust, rjust, and center.  When putting Ruby code on 
    webpages, when do we know to use these Ruby methods and when 
    do we know to use CSS?  

    All of the regular Ruby parts and math calculations made 
    sense to me so far, only because I've seen them before 
    since I previously worked with Python and JavaScript.  So 
    the logic and main ideas are the same.  

    The only things I need to do for learning Ruby is to get 
    familiar enough with the syntax, and get better with the 
    built-in methods.  

    Also, I tried to write my own RSpec code for the code in 
    4.2 and 4.3 that didn't live inside methods.  I think I'm 
    still not very familiar with RSpec yet, but I'll get better 
    with practice and office hours lol!  

    (What confused me about RSpec for now is that I tried searching 
    the web for how to RSpec for gets.chomp inputs combined with 
    having no method in the program body [see above].  Need more 
    research & practics....)

Add a link to each exercise solution file as well so your peers can easily look at your code.

4.3.1 Return a Formatted Address
https://github.com/BerniceChua/phase-0/blob/master/week-4/address/my_solution.rb

4.3.2 Defining Math Methods
https://github.com/BerniceChua/phase-0/blob/master/week-4/math/my_solution.rb
=end