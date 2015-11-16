# Virus Predictor

# I worked on this challenge [by myself, with John Dees].
# We spent [1] hour on this challenge.
# Sun, 11/15 at 3:00 pm PST

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  # attr_accessor :population, :population_density

  def initialize(state_of_origin)
    # sets up the initial/starting conditions of the new instance that you'll make.
    @state = state_of_origin
    @population = STATE_DATA[@state][:population]
    @population_density = STATE_DATA[@state][:population_density]
  end

  def virus_effects
    # runs 2 other methods: 1) predicted_deaths & 2) speed_of_spread
    # the 2 methods inside here are are private/helper methods
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private

  def predicted_deaths
=begin
predicts the # of deaths in a state based on population density & total population
1) takes in 3 arguments: population density, population, & state
2) it compares population density with a given criteria, 
based on the criteria, it calculates number_of_deatsh by multiplying the stat's population w/ some factor/ratio
3) the answer gets printed out along w/ the state's name.
=end
    # predicted deaths is solely based on population density
    if @population_density >= 200
      (@population * 0.4).floor
    elsif @population_density >= 150
      (@population * 0.3).floor
    elsif @population_density >= 100
      (@population * 0.2).floor
    elsif @population_density >= 50
      (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end
  end

  def speed_of_spread #in months
=begin
calculates the speed of the virus's spread
takes in 2 arguments: population_density, & the name of the state.
1) based on the population size, it will predict how much time it takes
for the virus to spread
=end
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # months_it_takes_to_spread = 0.0

    if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
# def initialize(state_of_origin, population_density, population)
STATE_DATA.each { |state, info| VirusPredictor.new(state).virus_effects }

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

=begin
Release 9: Reflect
On your own, add a commented reflection section to your my_solution.rb file. Answer the 
following questions in your reflection:

1. What are the differences between the two different hash syntaxes shown in the 
state_data file?
  The outer keys (names of the states) are using strings as the key names, and the 
  inner keys (:population & :population_density) are using symbols as the key names.  

  Symbols as key names are more efficient in terms of computing power, compared to 
  strings, because symbols can be processed faster.  
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

2. What does require_relative do? How is it different from require?
  The keyword "require_relative" allows a .rb file to import data from 
  a file in the same directory.  The syntax is:
    require_relative my_external_file
  Note that the filename "my_external_file" does not have a file extension.  

3. What are some ways to iterate through a hash?
  There are several methods (literally methods the Ruby keyword, and no pun intended) to 
  iterate over a hash.  A few of them are: 
    .each_key = loops through each key of the hash.
      my_hash.each_key { |my_key|
        # code here will output based on what it accesses from 
        # my_key, which is each key of the hash.
        # use this if you don't care about the value of the key-value pair.  
      }

    .each_value = loops through each value of the hash.
      my_hash.each_value { |my_value|
        # code here will output based on what it accesses from 
        # my_value, which is each value of the hash.
        # use this if you don't care about the key of the key-value pair.  
      }

    .each_pair (which does the same thing as .each)
      = loops through each element (key-value pair) of the hash.
          .each example: 
            my_hash.each { |my_key, my_value|
              # code here will output based on what it accesses from 
              # both my_key & my_value.  
              # use this if you need to access BOTH the key & the value of the key-value pair.  
            }
          .each_pair example: 
            my_hash.each_pair { |my_key, my_value|
              # code here will output based on what it accesses from 
              # both my_key & my_value.  
              # use this if you need to access BOTH the key & the value of the key-value pair.  
            }

4. When refactoring virus_effects, what stood out to you about the variables, if anything?  
  The biggest thing that stood out to me was the method called "speed_of_spread".  

  Originally, before we refactored it, the numbers being returned (0.5, 1.0, 1.5, 
  etc.) had a variable name called "speed".  I know that there is a comment on the 
  side that said "# in months", but speed was a little confusing because to someone 
  just eyeballing it, it looks really weird that the so-called "speed" increases with 
  smaller population densities.  I'm not a biologist, but even that looks wrong.  

  So it felt better to change the variable name to "time_it_takes_to_spread" (which 
  really should've been "months_it_takes_to_spread", but oh well).  (Which didn't 
  really matter anyway because that variable name got refactored away.)

5. What concept did you most solidify in this challenge?
  There are 2 concepts that got solidified for me in this challenge.
  First was "require_relative".  I was trying to use it on my own before, but it didn't 
  work, and the GPS guide today explained how to use it properly.  
  Second was advanced ways to think about refactoring.  The GPS guide showed really 
  good examples on how to refactor code better.  

  Also, he introduced that in Ruby, it's possible to also make class methods private by doing:
        private :my_method_1 :my_method_2
  (which looks like how the "attr" variables are named).  

=end