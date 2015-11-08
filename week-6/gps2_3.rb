# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  library.each do |food|
    if library[food] != library[item_to_make]
      p error_counter += -1
    end
  end

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library.values_at(item_to_make)[0]
  serving_size_mod = order_quantity % serving_size

  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection


# Your Names
# 1) Peter N. Wood
# 2) Bernice Anne W. Chua

# We spent 120 hours on this challenge.

# Bakery Serving Size portion calculator.
  

def serving_size_calc( item_to_make, order_quantity )
  
  # Hash stores menu items and how many can be made
  inventory = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  # Error checker alerts user when item is unavailable
  if !inventory.key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
 
  amt_to_make = inventory[item_to_make]
  leftover_amt = order_quantity % amt_to_make

  message = "Calculations complete: Make #{amt_to_make/order_quantity} of #{item_to_make}, you have #{leftover_amt} leftover ingredients. Remaining inventory: "
    
  inventory.each do |key, value|
    message += "#{value} #{key.capitalize}, "
  end
  
  if amt_to_make < order_quantity
    return "The order #{order_quantity} is more than our available quantity for #{item_to_make} (there is #{amt_to_make} left).  Please try again."
  else
    return message
  end

#  "Suggested baking items: TODO: MAKE THIS FEATURE"

end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

=begin

Release 5: Reflect
On your own, add a commented reflection section to your gps.rb file. 
Answer the following questions in your reflection:

1. What did you learn about making code readable by working on this challenge?



2. Did you learn any new methods? What did you learn about them?



3. What did you learn about accessing data in hashes?



4. What concepts were solidified when working through this challenge?



=end