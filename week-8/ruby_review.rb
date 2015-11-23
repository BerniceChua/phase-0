# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

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




# 4. Convert your driver test code from that challenge into Assert Statements





# 5. Reflection
=begin

Release 2: Reflect
In the reflection section in your ruby_review.rb file, answer the following questions:

1. What concepts did you review or learn in this challenge?

    I reviewed the concept of assert statements and test-driven development.  


2. What is still confusing to you about Ruby?

    fdfd


3. What are you going to study to get more prepared for Phase 1?

    fdfs

=end