# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1.75] hours on this challenge, including writing the reflection.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#    errors.rb
# 2. What is the line number where the error occurs?
#    170
# 3. What is the type of error message?
#    syntax error
# 4. What additional information does the interpreter provide about this type of error?
#    unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
#    between puts "What's there to hate about #{thing}?" and end, there should be an indented end
# 6. Why did the interpreter give you this error?
#    ruby interpreter expected an "end" to close "while true", but it went to the end of the file but still coudln't find one.  
#    By the way, "while true" will make cartman_hates(thing) go on an infinite loop if it was ever called.
# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
#    35
# 2. What is the type of error message?
#    NameError
# 3. What additional information does the interpreter provide about this type of error?
#    in `<main>': undefined local variable or method `south_park' for main:Object
# 4. Where is the error in the code?
#    line 35, "south_park" local variable was declared, but not initialized/not defined.
# 5. Why did the interpreter give you this error?
#    "south_park" local variable needs to be given a value/initialized/defined.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
#    50
# 2. What is the type of error message?
#    NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
#    in `<main>': undefined method `cartman' for main:Object
# 4. Where is the error in the code?
#    interpreter didn't put an arrow, so I'm assuming the entire code?
# 5. Why did the interpreter give you this error?
#    when interpreter saw "cartman()", it expected the method to be declared somewhere, so it was looking for a method called "cartman", but this doesn't exist.  

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#    65
# 2. What is the type of error message?
#    ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#    "in `cartmans_phrase': wrong number of arguments (1 for 0)" and "from errors.rb:69:in `<main>'"
# 4. Where is the error in the code?
#    line 69, " cartmans_phrase('I hate Kyle') ", need to remove "('I hate Kyle')"
# 5. Why did the interpreter give you this error?
#    cartmans_phrase is a method that does not accept arguments, but when the method was called in line 69, it had 1 argument "('I hate Kyle')".

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

# cartman_says

# 1. What is the line number where the error occurs?
#    84
# 2. What is the type of error message?
#    ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#    "in `cartman_says': wrong number of arguments (0 for 1)" and "from errors.rb:88:in `<main>'"
# 4. Where is the error in the code?
#    line 88, cartman_says, need to add some kind of argument which seems to be a String.
# 5. Why did the interpreter give you this error?
#    This is the opposite case from the previous error.  "cartman_says" is method that accepts 1 argument, but when the method ws called in line 88, it didn't have an argument.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#    105
# 2. What is the type of error message?
#    (ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#    "in `cartmans_lie': wrong number of arguments (1 for 2)" and "from errors.rb:109:in `<main>'"
# 4. Where is the error in the code?
#    line 109, cartmans_lie('A meteor the size of the earth is about to hit Wyoming!') only had 1 argument to go into the parameter "lie", but nothing to go into the parameter "name".
# 5. Why did the interpreter give you this error?
#    "cartmans_lie" is method that accepts 2 arguments, but when the method ws called in line 109, it only had 1 argument to go into the parameter "lie", but nothing to go into the parameter "name".

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#    124
# 2. What is the type of error message?
#    TypeError
# 3. What additional information does the interpreter provide about this type of error?
#    "in `*': String can't be coerced into Fixnum" and "from errors.rb:124:in `<main>'"
# 4. Where is the error in the code?
#    line 124, ' 5 * "Respect my authoritay!" ', 5 cannot be multiplied by a String "Respect my authoritay!".  
# 5. Why did the interpreter give you this error?
#    interpreter is trying to multiply 5 with the String.  Because * (multiply) is a built-in arithmentic method, so whatever is on the left of * is the thing that will be evaluated by *, and whatever is on the right of * should be a number.  Corrected version: "Respect my authoritay!" * 5 will make 5 copies of "Respect my authoritay!"

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#    139
# 2. What is the type of error message?
#    ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#    "in `/': divided by 0" and "from errors.rb:139:in `<main>'"
# 4. Where is the error in the code?
#    line 139, "20/0"
# 5. Why did the interpreter give you this error?
#    because even in real life, you can't divide by Zero!!!!!

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#    155
# 2. What is the type of error message?
#    LoadError
# 3. What additional information does the interpreter provide about this type of error?
#    "in `require_relative': cannot load such file -- /Users/Bernice/DevBootcamp/phase-0/week-4/cartmans_essay.md" and "from errors.rb:155:in `<main>'"
# 4. Where is the error in the code?
#    line 155, "cartmans_essay.md"
# 5. Why did the interpreter give you this error?
#    require_relative is used to load external files.  ruby interpreter is looking for "cartmans_essay.md" in this directory, but it does not exist.  "LoadError" just means "failed to load this file."


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
    
1. Which error was the most difficult to read?

    ruby errors.rb
    errors.rb:170: syntax error, unexpected end-of-input, expecting keyword_end

    I encountered this after commenting out ' "Screw you guys " + "I'm going home." = cartmans_phrase '

    This was the error because the while loop didn't have a closing "end", 
    so the code used the "end" of that method to close the while loop.  Since 
    the method itself didn't have an "end" the interpreter kept looking for 
    the "end" until the end of the file, but didn't find one.  

    It was not difficult to read, but difficult to figure out, because 
    I went straight to line 170, but that was the end of the document, 
    where it says "# Write your reflection below as a comment." (until I added
    these answers.)  So it didn't tell me anything.  

    I actually spent the longest time searching for where the beginning of 
    that "expecting keyword_end" was starting.  So I looked at the end of 
    this document, but I couldn't see what needed an "end".  

    I figure out that the way that ruby interprets a file is 
    from the beginning to the end in the order that things are written.  
    It will act as usual, and it will only stop and spit out an error 
    message when it finds a problem because it doesn't know how to 
    continue.  So I went back to the lines of code near the beginning, 
    and realized "This is not Python lol!!!" so that Ruby needs "end" 
    at the end of while loop.  

2. How did you figure out what the issue with the error was?  

    I actually spent the longest time searching for where the beginning of 
    that "expecting keyword_end" was starting.  So I looked at the end of 
    this document, but I couldn't see what needed an "end".  

    I figure out that the way that ruby interprets a file is 
    from the beginning to the end in the order that things are written.  
    It will act as usual, and it will only stop and spit out an error 
    message when it finds a problem because it doesn't know how to 
    continue.  So I went back to the lines of code near the beginning, 
    and realized "This is not Python lol!!!" so that Ruby needs "end" 
    at the end of while loop.  

    I only figured it out after I stepped away for a while and ate a snack.  

3. Were you able to determine why each error message happened based on the code? 

    Yes, especially after the first one was done, the rest were easy.  

4. When you encounter errors in your future code, what process will you follow to help you debug?

    Step 1: Look at the line # of where the error is happening.

    Step 2: Go to that line in the code.  

    Step 3: Compare that line of code with the error message and the 
    expectation of the compiler.  

    Step 3.5: Most error messages are self-explanatory, but 
    if you don't know what that error means, research it on 
    the internet.  

    Step 4: Correct the code based on the error message.  

=end