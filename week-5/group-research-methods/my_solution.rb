# Research Methods

# We spent 3 hours on this challenge.
#
# 5) Split Data: Dan Andersen and Bernice Chua (Accountability group 3)

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# ________________________________________________________________________________
# Person 5

=begin
PSEUDOCODE:
  "my_array_splitting_method":
  1)  Make new array to hold output arrays to make sure that original array is not changed (non-destructive).
  2)  Go through each element and check if it is an integer.
  3)  IF element is an integer, put a copy of it into "Integer" array within the output array
  4)  IF element is NOT an integer, put a copy of it into "Other" array within the output array
  5)  Return the output array
=end



def my_array_splitting_method(source)
  output_array = [[],[]]
  source.each do | element|
    if element.is_a?(Integer)
      output_array[0] << element
    else
      output_array[1] << element
    end
  end
  output_array
end
my_array_splitting_method(["I", "want", 3, "pets", "but", "only", "have", 2 ])

# Identify and describe the Ruby method(s) you implemented.
# We used is_a? which tests an object to determine whether it is a certain
#data type.
# We used << which pushes an element to an array or hash.
# We used if/else as a conditional to help sort the elements to the output array
# We used .each to iterate over the input array in order to sort it

# _______________________________________________________________________

=begin
PSEUDOCODE:
  "my_hash_splitting_method":
  1)  Make new array to hold output arrays to make sure that original array
    is not changed (non-destructive).
  2)  Go through each element and check how old each pet is.
  3)  IF element age is less than 4 (years old), put a copy of the name of
    the pet AND its age into "young pet" array within the output array
  4)  IF element age is greater than 4 (years old), put a copy of the name
    of the pet AND its age into "old pet" array within the output array
  5)  Return the output array
=end


def my_hash_splitting_method(source, age)
  all_pets_array = [[],[]]
  source.each do | name, pets_age |
    if pets_age < age
      all_pets_array[0] << [name, pets_age]
    else
      all_pets_array[1] << [name, pets_age]
    end
  end
  all_pets_array
end

=begin
Identify and describe the Ruby method(s) you implemented.
We used << which pushes an element to an array or hash. In this case, we
pushed an array to another array.
We used if/else as a conditional to help sort the elements to the output array.
We used .each to iterate over the input array in order to sort it.
=end


# ________________________________________________________________

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.

=begin
  We implemented the my_array_splitting_method and the
  my_hash_splitting_method in order to take information out of arrays and sort
  or organize them into different arrays based on data type or value. These
  methods could be altered to sort arrays based on variety of different factors.

  my_array_splitting_method takes the input of an array containing  a variety
  of data types and separates it into an array containing a sub-array of all
  the integer elements , and a sub-array with elements of all other data types.

  In order to run this method, simply call my_array_splitting_method on a new 
  line in Ruby with the array that you want to sort in the argument.

  "my_array_splitting_method" performs the following:
  1)  It make new array called output_array to hold a copy of the input to
  make sure that original array is not changed, because it is a non-
  destructive method.
    1.a) "output_array" contains 2 sub-arrays.  The first sub-array is at index
    zero, and the second sub-array is at index 1.
  2)  Next, it goes through each element and checks if it is an integer.
  3)  IF the element is an integer, the method copies this element into
  the sub-array at index zero of "output_array".
  4)  IF element is NOT an integer the method copies this element into
  the sub-array at index 1 of "output_array".
  5)  Lastly, "my_array_splitting_method" returns the output_array.
  "my_hash_splitting_method" takes the input of a hash containing key/value
  pairs of a pet's name and age, and sorts the pairs into an output array based 
  on the age values. In order to run this method, simply call 
  "my_hash_splitting_method" on a new line in Ruby with the array that you 
  want to sort and the age that you want to sort by in the argument.

  "my_hash_splitting_method" performs the following:
  1)  It makes new array called all_pets_array to hold a copy of the input to
  make sure that original hash is not changed, because it is a non-
  destructive method.
    1.a) "all_pets_array" contains 2 sub-arrays.  The first sub-array is at index
    zero, and the second sub-array is at index 1.
  2)  Next, it goes through each element and checks if the age value for the 
  key/value pair is less than the given age argument.
  3)  IF the age value of the key/value pair is less than the given age argument 
  for the method, the method copies this pair into the sub-array at index zero of 
  "all_pets_array".
  4)  Otherwise (Else) the method copies this key/value pair into
  the sub-array at index 1 of "all_pets_array".
  5)  Lastly, "my_hash_splitting_method" returns the all_pets_array.
=end

=begin
TOOLS FOR NAVIGATING THE RUBY DOCS:
  1) Break down the problem into as many small steps or processes as possible in 
  your Pseudocode.
  2) Step by step, move through your Pseudocode workflow and create the code for 
  each process if you're able to do so.
  3) When you get stuck on a particular process, research the classes or built-in 
  Ruby methods that might be helpful in solving it.
  4) When you come across a method that you think will be useful in your program, 
  try experimenting with it in the terminal, using irb or the ruby interpreter. If 
  it does not work as you expected, move onto step 5. If it does function and 
  achieves the desired goal, move on to the next step in you pseudocode and begin 
  again at step 3.
  5) Search the Ruby docs (http://ruby-doc.org/) for the term or related terms for 
  the method you want to learn more about, and read through the description and 
  follow along with the example code that is provided.
=end


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#