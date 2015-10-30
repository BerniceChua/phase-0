# gps2_2.rb

# Release 1
=begin

#Create a new list
#INPUT: list name (string)
#OUTPUT: empty hash
DEF method create_list
Initialize a new, empty hash
END
=end
def new_list # why is that? :-)
  Hash.new
end

my_list = new_list()
p my_list


=begin
#Add an item with a quantity to the list
#INPUT: grocery_item(string), num_item(integer)
#OUTPUT: Hash that contains the item 
DEF method add_item
add grocery_item and num_item as key/value pair to hash
END
=end
def add_item(list_name, item_name, qty)
  if list_name.has_key?(item_name)
    return list_name
  end
  
  list_name[item_name] = qty # implicit return; return the qty that you assigned to the hash
  list_name
end

add_item(my_list, "Lemonade", 2)
add_item(my_list, "Tomatoes", 3)
add_item(my_list, "Onions", 1)
add_item(my_list, "Ice Cream", 4)
p my_list





# my_list = create_list
# my_list.include?("apples")
#   dont do anything
# else 
#   my_list = add_item(my_list, "apples",2)

# {}.methods <-- like this :-)


=begin
#Remove an item from the list
#INPUT: name of item to remove
#OUTPUT: Hash less that item
DEF method remove_item
remove grocery item from hash
END
=end
def remove_item(list_name, item_name)
  if list_name.has_key?(item_name) == false
    return "#{item_name} does not exist in this list."
  end
  
  list_name.delete(item_name)
  
  list_name
end

p remove_item(my_list, "Lemonade")




=begin
#Update quantities for items in your list
#INPUT: grocery_item, new qty
#OUTPUT: hash with updated amounts
IF new qty == old qty, alert user
DEF method update_qty
update item amounts
END
=end
def change_quantity(list_name, item_name, qty)
  if list_name.has_key?(item_name) == false
    return "#{item_name} does not exist in this list.  Add the item first."
  end
  
  list_name[item_name] = qty
  list_name
end

p change_quantity(my_list, "Ice Cream", 1)



=begin
#Print the list
#INPUT: none
#OUTPUT: list of grocery items with their quantities beside them
DEF method print_list
END
=end
def display_grocery_list(list_name)
  formatted_display = "Item\t\tQuantity\n\n"
  list_name.each do |key, value|
    # called string interpolation " #{var_name} " :-)
    formatted_display += "#{key}: #{value}\n"
  end
  formatted_display
end

puts display_grocery_list(my_list)

