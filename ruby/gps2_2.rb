# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create empty hash
  # get string from user for items wanted
  # split string
  # store items one at a time in the hash as keys
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

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

=begin 
puts "Welcome to the grocery list compiler."
puts "Enter the item and quantity that you would like."
puts "Enter 'done' when finished."
    item_and_quantity = gets.chomp.split(" ")
    item = item_and_quantity[0]
    quantity = item_and_quantity[1]
    add_items(list, item, quantity)
    puts print_list(list)
=end 

valid_response = false 
until valid_response 
    puts "Add item and quantity you would like to purchase; type 'done' when finished."
    item_and_quantity = gets.chomp.split(" ")
    item = item_and_quantity[0]
    quantity = item_and_quantity[1]
    
    
    if item_and_quantity == "done"
        valid_response = true
    
    else
    add_items(list, item, quantity)
    puts print_list(list)
    end 

end 

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



# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
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