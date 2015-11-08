#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Release 5: Apply
class NameData
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end


class Greetings
  def initialize(name_to_greet)
    @name_to_greet = NameData.new(name_to_greet)
  end

  def hello
    puts "Greetings, #{@name_to_greet.name}!  Live long and prosper."
  end
end

greet = Greetings.new("Berni")
p greet.hello


# Reflection

=begin

Release 1: Read and Research
In the reflection section of the my_solution.rb file, answer the following questions:

1. What are these methods doing?

    initialize
        the Constructor of the "Profile" class, which sets up the initial 
        conditions of this class, which assigns the variables of the 
        instantiated object: 
            original @age to be 27, 
            original @name to be "Kim", and 
            original @occupation to be "Cartographer".  

    print_info
        displays all of the current information of this instantiated object (with formatting!)
        - age
        - name
        - occupation

    what_is_age
        displays the age of this instantiated object.  ("getter" method)
        (can be written as "attr_reader :age", but to call the method, it would 
        no longer be "my_new_profile_instance.what_is_age", but it would just be
        my_new_profile_instance.age)

    change_my_age=(new_age)
        allows the age of this instantiated object to be changed ("setter" method) when 
        this method is called like this:
            my_new_profile_instance.change_my_age = [put the new age here]
        This kind of method is also known as "attr_writer".

    what_is_name
        displays the age of this instantiated object.  ("getter" method)
        (can be written as "attr_reader :name", but to call the method, it would 
        no longer be "my_new_profile_instance.what_is_name", but it would just be
        my_new_profile_instance.name)

    change_my_name=(new_name)
        allows the name of this instantiated object to be changed ("setter" method) when 
        this method is called like this:
            my_new_profile_instance.change_my_name = [put the new name here]
        This kind of method is also known as "attr_writer".

    what_is_occupation
        displays the age of this instantiated object.  ("getter" method)
        (can be written as "attr_reader :occupation", but to call the method, it would 
        no longer be "my_new_profile_instance.what_is_occupation", but it would just be
        my_new_profile_instance.occupation)

    change_my_occupation=(new_occupation)
        allows the occupation of this instantiated object to be changed ("setter" 
        method) when this method is called like this:
            my_new_profile_instance.change_my_occupation = [put the new occupation here]
        This kind of method is also known as "attr_writer".

2. How are they modifying or returning the value of instance variables?

    change_my_age=(new_age), change_my_name=(new_name), and change_my_occupation=(new_occupation)
    are the methods that change the values of the instance variables.  

    To call change_my_age=(new_age), you would write: 
    "my_new_profile_instance.change_my_age = [put the new age here]"
    It does this by setting the new age from the "new_age" argument/parameter into the 
    Instance variable called "@age".  Because of this, from now on, whenever this 
    instantiation is called, the "@age" will now be the new age instead of the 
    initialized age.  

    To call change_my_name=(new_name), you would write: 
    "my_new_profile_instance.change_my_name = [put the new name here]"
    It does this by setting the new name from the "new_name" argument/parameter into the 
    Instance variable called "@name".  Because of this, from now on, whenever this 
    instantiation is called, the "@name" will now be the new name instead of the 
    initialized name.  

    To call change_my_occupation=(new_occupation), you would write: 
    "my_new_profile_instance.change_my_occupation = [put the new occupation here]"
    It does this by setting the new occupation from the "new_occupation" argument/parameter into the 
    Instance variable called "@occupation".  Because of this, from now on, whenever this 
    instantiation is called, the "@occupation" will now be the new occupation instead of the 
    initialized occupation.  


Release 2: Identify the Changes
Open release_2.rb. Run the code and read the comments (and the code). In the reflection section of 
the my_solution.rb file, answer the following questions:

1. What changed between the last release and this release?

    This method:
        # def what_is_age
        #   @age
        # end
    got replaced with "attr_reader :age"

    And the way that this method is called is now: 
    "instance_of_profile.age" instead of "instance_of_profile.what_is_age".  

    The output did not change despite this.  

2. What was replaced?

    This method:
        # def what_is_age
        #   @age
        # end
    got replaced with "attr_reader :age"


3. Is this code simpler than the last?

    Yes


Release 3: More Changes
Open release_3.rb. Run the code and read both the comments and the code. Notice where the code 
changed. In the reflection section of the my_solution.rb file, answer the following questions:

1. What changed between the last release and this release?

    This method:
        # def change_my_age=(new_age)
        #   @age = new_age
        # end
    got replaced with "attr_writer :age"

    And the way that this method for changing the age is called is now: 
    "instance_of_profile.age = 28" instead of using ".change_my_age".  

    The output did not change despite this.  

2. What was replaced?

    This method:
        # def change_my_age=(new_age)
        #   @age = new_age
        # end
    got replaced with "attr_writer :age"

3. Is this code simpler than the last?

    Yes, but it seems a little confusing because the name is the same.  
    The only difference is that the "attr_writer" has an equal sign after it.  


Release 4: Using attr_ methods
Open release_4.rb. Finish refactoring the code to make the best use of the 
attr_attribute methods and delete any code that isn't needed anymore. 
=end
class Profile
  attr_accessor :age  
  # I think that "attr_accessor" is ok, but most of the time, it's not safe for the data.
  # For this reason, I'll stick to "attr_reader" & "attr_writer" for the rest of them.  
  attr_reader :name
  attr_writer :name
  attr_reader :occupation
  attr_writer :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end

end

instance_of_profile = Profile.new
puts "--- printing age -----"
sleep 0.8
p instance_of_profile.age

puts "--- printing name ----"
sleep 0.8
p instance_of_profile.name

puts "--- printing occupation ----"
sleep 0.8
p instance_of_profile.occupation

puts "--- changing profile information ----"
10.times do
  print "."
  sleep 0.1
end

instance_of_profile.age = 28
instance_of_profile.name = "Taylor"
instance_of_profile.occupation = "Rare Coins Trader"


puts
puts "---- printing all profile info -----"
sleep 0.8
instance_of_profile.print_info


=begin

Release 6: Reflect
On your own, create a commented section in your my_solution.rb file and write 
a (or create a video) reflection that answers the following questions:

1. What is a reader method?

    A reader method is a method that reads an existing value of the instantiated object.  

2. What is a writer method?

    A writer method is a method that "writes into" or changes an existing value of the 
    instantiated object.  

3. What do the attr methods do for you?

    The "attr" methods are shorthand code for reader and writer methods.  
    This is because the design pattern for data being read from and written into 
    methods is such a common design pattern, that Ruby has this shortcut for us.  

4. Should you always use an accessor to cover your bases? Why or why not?

    "attr_accessor" is not always a good idea, because the data might be 
    accidentally overwritten.  

    Also, there are times when the data that needs to be read is a result of some 
    calculation within the class based on some input, or it's supposed to be a 
    constant of some sort.  So the "attr" for this should only be a "attr_reader".  

    For example, if I make a class with a calculation to get factorials (for whatever 
    reason, I just can't think of a good example for now.)  The user's input COULD be 
    "attr_accessor", because the user can input what number he/she wants a 
    factorial of (so this is "attr_writer :input_number").  
    At the same time, the user might forget what input they used, and want to see it, 
    so they can use "attr_reader".  But the result will only be "attr_reader", because 
    the calculation determines the factorial result, and not just whatever gets inputted.  

5. What is confusing to you about these methods?

    I have a concrete example for this.  In the 2nd dice homework, the number of sides on 
    the dice is determined by the number of labels that they assigned to the array.  I think 
    that if I use "attr_reader for this, we'll end up with more lines of code.  Is that ok?  
    It seems a bit repetitive to me, and there are more lines of code now.  
    class Die
      def initialize(labels)
        raise ArgumentError if labels.empty? || labels.nil?

        @labels = labels
      end

      def sides
        @labels.length
      end

      def roll
        @labels[Random.new.rand(0...sides)]
      end
    end

    Becomes

    class Die
      attr_reader :sides
      attr_reader :roll

      def initialize(labels)
        raise ArgumentError if labels.empty? || labels.nil?

        @labels = labels
      end

      def sides
        @rsides = @labels.length
      end

      def roll
        @roll = @labels[Random.new.rand(0...sides)]
      end
    end

    Also, as I mentioned earlier, it seems a little confusing because the name is the same.  
    The only difference is that the "attr_writer" has an equal sign after it.  

=end