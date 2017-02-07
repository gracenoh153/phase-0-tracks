# Method to create a list
# steps: create method with an empty hash (grocery_list)

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:   
  # get string from user for items wanted
  # split string
  # store items as key/pair values within grocery_list 
# output: none 

# Method to remove an item from the list
# input: list, item
# steps: 
  # get string from user
  # use .delete to search for key that matches string, then delete
  # implicitly return updated list 
# output: none 

# Method to update the quantity of an item
# input: list, item, quantity 
# steps:
  # get string from user
  # search for key and assign new quantity to value
# output: none

# Method to print a list and make it look pretty
# input: grocery list hash
# steps:
  # for each item in grocery list has, print the item and quantity
# output: item and quantity in grocery list

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
  puts "YOUR GROCERY LIST:"
  grocery_list.each do |item, quantity|
      puts "#{item}: #{quantity}"
  end
  puts "----------"
end 

list = create_hash

# p add_items(list, "carrots", 2)
# p list
# p print_list(list)



# USER INTERFACE

puts "Welcome to the grocery list compiler."
valid_response = false 
until valid_response 
  puts "Enter the item and quantity that you would like, separated by a space."
  puts "If your item name is more than one word, use an underscore(_) instead of a space."
  puts "For example: 'ice_cream 2'."
  puts "Enter 'done' when finished."
  item_choice = gets.chomp 
  item_and_quantity = item_choice.split(" ")
  if item_choice == "done"
    valid_response = true  
  else 
    item = item_and_quantity[0]
    quantity = item_and_quantity[1]
    add_items(list, item, quantity)
    puts print_list(list)
  end 
end
puts "------------"
puts "Is there an item you would like to remove from your grocery list?"
puts "If yes, enter the item name. If not, enter 'skip'."
remove_choice = gets.chomp
if remove_choice == "skip"
  puts "Looks good."
else
  remove_items(list, remove_choice)
  puts print_list(list)
end 

puts "Would you like to update the quantity of an item you're purchasing?"
puts "If yes, enter the item followed by the new quantity separated by a space."
puts "For example, 'apples 4'. If not, enter 'skip'."
update_choice = gets.chomp
new_item_and_quantity = update_choice.split(" ")
if update_choice == "skip"
  puts "Awesome. Here is your final list. Happy shopping!"
  puts print_list(list)
else
  item = new_item_and_quantity[0]
  quantity = new_item_and_quantity[1]
  update_quantity(list, item, quantity)
  puts print_list(list)
end
