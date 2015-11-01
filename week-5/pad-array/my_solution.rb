# Pad an Array

# I worked on this challenge [with: Natalie Polen (navigator)]

# I spent 2 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

=begin
# What is the input?
INPUT = array

# What is the output? (i.e. What should the code return?)
output for pad = a different modified array, 
    but original array is unchanged
output for pad! = the input array, but modified

# What are the steps needed to solve the problem?

for pad
Step 1: get inputs:
    1 array -- called "array"
    1 integer (total # of elements in array) -- called "min_size"
    OPTIONAL: 1 argument for what we will use to fill out array
        (if not specified, default = nil [the actual value of nil, not a String that says "nil"])
Step 2:
    make new variable to hold results array -- called "copy"
Step 3:
    check if length of "array" is smaller than or equal to min_size
Step 3.1
    if min_size is smaller than or equal to the lenght of "array", return "copy".
Step 3.2
    if "min_size" is larger than length of "array", pad "copy" of array with "value"
        how?
        Step 3.2.a:
            if "value" is NOT specified, put nil as padded elements
        Step 3.2.b:
            if "value" IS specified, put value of "value" as padded elements

=end


# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if min_size <= array.length
    return array
  else
    padding = array.length - min_size

    counter = array.length
    while counter < min_size
        array << value
        
        counter += 1
    end

    return array
  end

end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  copy = []
  
  array.each do |variable|
      copy << variable
  end

  if min_size <= array.length
    return copy
  else
    padding = array.length - min_size

    counter = array.length
    while counter < min_size
        copy << value

        counter += 1
    end

    return copy
  end
end



# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
    return array if min_size <= array.length
        
    for i in 1..(min_size - array.length) 
        array.push(value)
    end

    return array
end

def pad(array, min_size, value = nil) #non-destructive
  copy = [] + array  # same as copy.concat(array)

  return copy if min_size <= array.length

  for i in 1..(min_size - array.length) 
    copy << value
  end

  return copy
end


# Re-refactored Solution

def pad!(array, min_size, value = nil) #destructive
    return array if min_size <= array.length

    (min_size - array.length).times { array.push(value) }

    return array
end

def pad(array, min_size, value = nil) #non-destructive
  copy = [] + array  # same as copy.concat(array)

  return copy if min_size <= array.length

  (min_size - array.length).times { copy << value }

  return copy
end


# 4. Reflection
=begin

Release 6: Reflect
On your own, create a commented section in your "my_solution.rb" file and 
write a (or create a video) reflection that answers the following questions:

1. Were you successful in breaking the problem down into small steps?

    Yes, and it's easier to do this with a person who is giving feedback, 
    because she had ideas when I got stuck.  

2. Once you had written your pseudocode, were you able to easily translate 
it into code? What difficulties and successes did you have?

    Once we wrote the pseudocode, we were able to easily translate it into 
    code.  The only difficulty that we ran into was that in our minds, it 
    was already implicit that we had to go through each item.  But the 
    computer needs exact instructions, so we had to specify it in the code,
    even if it wasn't in the pseudocode.  Other than that, I think that we 
    did OK on coding the initial solution.  We just took longer than 
    expected trying to refactor.  

3. Was your initial solution successful at passing the tests? If so, why do you 
think that is? If not, what were the errors you encountered and what did you do 
to resolve them?

    Our initial solution did not pass the tests successfully at first, but this 
    was expected, because we were doing red-green "refactoring".  We initially 
    thought that we could be lazy and get away with "copy = array", but that 
    does not work because arrays are pass-by-reference, and the value does 
    not copy.  We resolved it by looking at what actually appears in "copy" through 
    "puts" statements.  When we found out the error, we corrected it as seen above.

4. When you refactored, did you find any existing methods in Ruby to clean 
up your code?

    Originally, we used this to copy the contents of "array" into "copy":
        copy = []
  
        array.each do |variable|
            copy << variable
        end

    When we refactored, we just used the "+" operator:
        copy = [] + array  # same as copy.concat(array)

    Aside from that, we shortened the loop for adding the paddings.  
    Instead of using a while or a for loop, we used ".times".  

5. How readable is your solution? Did you and your pair choose descriptive 
variable names?

    I think that all of our solutions and variable names are readable, because we 
    asked each other: "If someone else looked at this right now without us explaining 
    it, or even if we looked at this 5 weeks from now, will this make sense?"

6. What is the difference between destructive and non-destructive methods in 
your own words?

    Non-destructive methods don't modify the original data that it's working 
    on, by creating a copy of it, and returning the modified copy.  

    Destructive methods permanently modify the original data.  

=end