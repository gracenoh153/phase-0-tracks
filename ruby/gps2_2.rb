# Method to create a list
# steps: create method with an empty hash (grocery_list)

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:   
  # get string from user for items wanted
  # split string
  # store items as key/pair values within grocery_list 
# output: 

# Method to remove an item from the list
# input: 
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

# BUSINESS LOGIC
def create_hash
  grocery_list = {}
end

def add_items(grocery_list, item, quantity)
  if item != "done"
    grocery_list[item] = quantity
  else
    grocery_list 
  end 
end

def remove_items(grocery_list, item)
    grocery_list.delete(item)
    grocery_list
end 

def update_quantity(grocery_list, item, quantity)
    grocery_list[item] = quantity
end

def print_list(grocery_list)
    puts "----------"
    puts "Your grocery list:"
    grocery_list.each do |item, quantity|
        puts "#{item}: #{quantity}"
    end
    puts "----------"
end 

list = create_hash

# p add_items(list, "carrots", 2)
# p list

# USER INTERFACE


puts "Welcome to the grocery list compiler."
while true
  puts "Enter the item and quantity that you would like, separated by a space."
  puts "Enter 'done' when finished."
  item_and_quantity = gets.chomp.split(" ")
  if item_and_quantity == "done"
    false 
    break
  else 
    item = item_and_quantity[0]
    quantity = item_and_quantity[1]
    add_items(list, item, quantity)
    puts print_list(list)
    end 
end

=begin 
puts "Welcome to the grocery list compiler."
valid_response = false 
until valid_response 
  puts "Enter the item and quantity that you would like, separated by a space."
  puts "Enter 'done' when finished."
  item_and_quantity = gets.chomp.split(" ")
  item = item_and_quantity[0]
  quantity = item_and_quantity[1]
#  if item_and_quantity == "done"
#      valid_response = true
# else
  add_items(list, item, quantity)
  puts print_list(list)
#  end 
end
=end

=begin 
item_and_quantity = "" 
until item_and_quantity == "done"
    puts "Add item and quantity you would like to purchase; type 'done' when finished."
    item_and_quantity = gets.chomp.split(" ")
      break if item_and_quantity == "done"
    item = item_and_quantity[0]
    quantity = item_and_quantity[1]
    add_items(list, item, quantity)
    puts print_list(list)
end 
puts "Would you like to delete any items from the list?"
deleted_item = gets.chomp
remove_items(list, deleted_item)
puts print_list(list)
=end 