# Title: Create a Car Class from User Stories


# I worked on this challenge [with: Darius Atmar].


# 2. Pseudocode

=begin
IF user makes a "car" object, the user can choose the model of the car, and its color

IF the user inputs a distance to drive, the distance will be recorded in a variable.

IF the user requests to see the speed, the speed gets displayed.  

IF the user chooses to turn left, game will record that user turned left.

IF the user chooses to turn right, game will record that user turned right.

IF the user wants to change speed, the can input the speed to record/change it.  

IF the user wants to know the total distance, the total distance will be displayed.  

IF the user tells the car to stop, it will be the current status of the car.

IF the user wants to see the latest action, it will be displayed.

=end


# 3. Initial Solution
class Car
  attr_accessor :model, :color, :distance, :turn_direction
  
  attr_reader :total_distance, :speed
  
  def initialize(model, color)
    @model = model
    @color = color
    @total_distance = 0
    @deliveries = []
  end
  
  def drive(distance, speed=@speed)
    @distance = distance
    @speed = speed
  end
  
  def accelerate(speed)
    @speed = speed
  end
  
  def stop
    @speed = 0
  end
  
  def total_distance
    @total_distance += @distance
  end
  
  def pizza_order(flavor, size)
    @deliveries <<  Pizza.new(flavor, size)
  end
  
  def pizza_deliveries
    @deliveries.shift
  end
  
  def print_info
    puts
    puts "Car Model: #{@model}"
    puts
    puts "Car Color: #{@color}"
    puts
    puts "Car speed: #{@speed}"
    puts
    puts "Car direction: #{@turn_direction}"
    puts
    puts "Current distance: #{@distance}"
    puts
    puts "Total distance: #{@total_distance}"
    puts
  end

end

class Pizza
  attr_accessor :flavor, :size
  
  def initialize(flavor, size)
    @flavor = flavor
    @size = size
  end
end


# 4. Refactored Solution

=begin
With our current abilities, we don't know how to 
refactor our code without sacrificing readability, or without breaking the code.  
=end


# 1. DRIVER TESTS GO BELOW THIS LINE
my_car = Car.new("Jaguar", "red")

# p my_car.model
# p my_car.color

# my_car.print_info

# my_car.distance = 50
# p my_car.distance

# my_car.print_info

# p my_car.total_distance
# my_car.distance = 25
# p my_car.distance
# p my_car.total_distance

# my_car.model = "Tesla"
# p my_car.model

# my_car.drive
# p my_car.speed 

# my_car.accelerate(75)

# p my_car.speed

# my_car.turn_direction = "left"
# p my_car.turn_direction

# my_car.print_info

my_car.drive(0.25, 25)
my_car.stop
my_car.turn_direction = "right"
my_car.drive(1.5, 35)
p my_car.speed
my_car.accelerate(15)
my_car.drive(0.25)
my_car.stop
my_car.turn_direction = "left"
my_car.drive(1.4, 35)
my_car.stop
p my_car.total_distance
my_car.print_info


# 5. Reflection

=begin

Release 2: Reflect
In the reflection section in your ruby_review.rb file, answer the following questions:

1. What concepts did you review in this challenge?

  In this challenge, we reviewed:
    - pseudocoding
    - thinking about: 
      - what is the best way to structure the code
      - what is the "minimum viable product" or what kind of complexity this project needs
    - classes in Ruby


2. What is still confusing to you about Ruby?

  What is still confusing to me about Ruby is when I can use symbols to be what gets 
  returned by a class's method, like in the "guessing game" challenge.  

  It is this one:
  https://github.com/BerniceChua/phase-0/blob/master/week-6/guessing-game/my_solution.rb


3. What are you going to study to get more prepared for Phase 1?

  To prepare for Phase 1, I will study some more about "yield", and probably scope.  
  Most definitely, I'll study how to use the variables in "for...in" to access nested 
  data structures, especially in JS because my pair and I had trouble with that.  
  I think I'll also study more about using "assert", because I didn't start using it 
  until I learned it from Dev Bootcamp.  (That was the reason I chose to practice/review 
  with it, because it is my weak spot.)  

  Aside from that, I want to study more about databases and SQL.  I feel like our 
  exposure to SQL in week 8 felt like an afterthought.  

  Also, I want more practice using JS to manipulate the DOM.  


=end