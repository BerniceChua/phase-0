# 6.5 Nested Data Structures (medium)

# I worked on this challenge [with: Amaar Fazlani].
# Friday, Nov. 6 at 2pm Eastern / 11am Pacific
# I spent [1.5] hours on this challenge.


# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================


# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# Pseudocode:
#Go through each item in number array
#Each item we will check if it is array
#If element is an array we will run another each loop
#Inside this each loop we will add 5 to each element
#if element is not array we will add 5

for element in (0...number_array.length) do 
  if number_array[element].kind_of?(Array)
    for inner in (0...number_array[element].length) do 
      number_array[element][inner] += 5
    end
  else
    number_array[element] += 5
  end
end

print number_array
puts

# refactored:
number_array.map! { |element|
  if element.kind_of?(Array)
    element.map! {|inner| inner + 5}
  else
    element + 5
  end
}

print number_array
puts
  
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# Pseudocode:
#Go through each item in startup_names array
#Each item we will check if it is array
#If element is an array we will run another each loop inside it
#Inside this each loop we will add "ly" to the name of each element
#if element is not array we will add "ly" to the name of this element

startup_names_copy = []
startup_names.each_index { |outtest|
  if startup_names[outtest].kind_of?(Array)
    startup_names_copy[outtest] = []
    
    startup_names[outtest].each_index { |inner|
      if startup_names[outtest][inner].kind_of?(Array)
        startup_names_copy[outtest][inner] = []
        
        startup_names[outtest][inner].each_index { |innest| 
          startup_names_copy[outtest][inner][innest] = startup_names[outtest][inner][innest].capitalize
        }
      else
        startup_names_copy[outtest][inner] = startup_names[outtest][inner].capitalize
      end
    }
  else 
    startup_names_copy[outtest] = startup_names[outtest].capitalize
  end
}
puts "\n\nBefore:"
puts "startup_names_copy:"
print startup_names_copy
puts "\nstartup_names:"
print startup_names

puts "\n\nAfter iterative transformation:"
puts "startup_names_copy:"

print startup_names_copy.each_index { |outtest_array_index|
  if startup_names_copy[outtest_array_index].kind_of?(Array)
    startup_names_copy[outtest_array_index].each_index { |inner_array_index|
      if startup_names_copy[outtest_array_index][inner_array_index].kind_of?(Array)
        startup_names_copy[outtest_array_index][inner_array_index].each_index { |innest_array_index| 
          startup_names_copy[outtest_array_index][inner_array_index][innest_array_index] += "ly"
        }
      else
        startup_names_copy[outtest_array_index][inner_array_index] += "ly"
      end
    }
  else 
    startup_names_copy[outtest_array_index] += "ly"
  end
}
puts "\nstartup_names (should be unchanged):"
print startup_names


# refactored:
puts "\n\nAfter refactored with .map transformation:"
puts "startup_names_copy:"
print startup_names.map { |element|
  if element.kind_of?(Array)
    element.map { | inner |
      if inner.kind_of?(Array)
        inner.map {|inner_inner| inner_inner.capitalize + "ly"}
      else
        inner.capitalize + "ly"
      end
    }
  else 
    element.capitalize + "ly"
  end
}
puts "\nstartup_names (should be unchanged):"
print startup_names
puts "\n\n"


=begin
Release 5: Reflect
On your own, create a commented section in your "nested_data_solution.rb" file and 
write a (or create a video) reflection that answers the following questions:

1. What are some general rules you can apply to nested arrays?

    In general nested data structures still follow the same rules as their 
    non-nested versions.  Arrays are still accessed through their 
    index numbers, and values of hashes are still accessed through their keys.  
    The only difference is that they can be chained together.  

    For example: nested_data[:array][1][:hash] -- I'll break this down:
    The outermost data structure is an array called "nested_data".  
    Inside "nested_data", we want to get what's inside the key called 
    ":array" which has an array inside it.  So we do:
            nested_data[:array]
    We want to get the 2nd element of this array, so we call index 1:
            nested_data[:array][1]
    Index 1 of this inner array has an innermost hash with a key called 
    ":hash", and we want to get its value, so we do:
            nested_data[:array][1][:hash]

    There is one quirk about nested data structures though.  Since data structures 
    like arrays and hashes are pass-by-reference instead of pass-by-value, this 
    rule still applies to the nested versions.  Normally if you want to transform 
    the data inside of arrays or hashes using a non-destructive method, you could 
    simply copy the contents into a new array through either of these ways:
        my_data_copy = [].concat(my_data)
        or
        my_data_copy = [] + my_data
    But since arrays and hashes are pass-by-reference, the nested data structures 
    still would not be non-destructive even with these copies, because they are 
    pointing to the same memory space.  So the inner arrays or inner hashes of the 
    original would still be changed.  Even .clone & .dup have the same effect.  

    I found this out because I wanted to make an
    iterative way of non-destructively transforming data without using ".map".  Here 
    was my code before I corrected it, and its results:
        startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]] 
        startup_names_copy = startup_names.clone

    When I printed startup_names to the console after running my code, it got 
    changed from the original.  Here's the results in coderpad:
        ["bit", ["findly", "fastly", ["optimizely", "scopely"]]] 

    "bit" is an integer, so .clone copied it like usual.  But the element at
    index 1 is an array so the code pointed to the same space in memory where 
    it lives.  In other words, the original array is equivalent to 
    ["bit", my_inner_array], wherein my_inner array is equivalent to 
    ["findly", "fastly", my_inner_inner_array], and so on and so forth.  

    Because of the whole pass-by-reference thing, when these inner arrays got 
    affected by .clone, it does not work out how we expect.  So if you want to 
    transform the data while still keeping the original data structure AND be 
    non-destructive, you would need to manually iterate through this data the 
    old-fashioned way, and you cannot use the shortcuts I mentioned above.  

2. What are some ways you can iterate over nested arrays?

    We used a nested for loop and a nested .each_index method to iterate over the 
    nested arrays in the iterative, original solution.  

    For the refactored solution, we used a nested .map! (the "destructive" version) to 
    iterate over the first nested data structure ("number_array"), because the 
    instructions specifically said "modify the original array".  

    But for the second optional one, we used the non-"destructive" version (.map without 
    the "!"), since I just think that it's good practice to preserve the original data in 
    case it is needed.  

3. Did you find any good new methods to implement or did you re-use one you were 
already familiar with? What was it and why did you decide that was a good option?

    Most of the methods that we used (.length, .kind_of?, .each, .map!, .map, and 
    .capitalize) were built-in methods that we already encountered before or we 
    were familiar with.  We decided to use them because out of all the options that 
    we tried, they got the job done the way we expected them to.  Also, because 
    nested data structures work the same way as their un-nested versions, so it was 
    just a matter of combining those built-in methods into the correct sequence.  

    The only new built-in method that I used was ".each_index".  I decided to use 
    it, so that I don't need to type (0...nested_outside.length) each time in a for 
    loop, and also because ".each" does not get the index but only the value at 
    that index.  

=end