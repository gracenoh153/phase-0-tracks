# require gem 
require 'sqlite3'

# create database for grocery list 
grocery_list = SQLite3::Database.new("groceries.db")
# grocery_list.results_as_hash = true

=begin 
# create users table 
create_users_table = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
  )
SQL

grocery_list.execute(create_users_table)


# create stores table 
create_stores_table = <<-SQL
  CREATE TABLE IF NOT EXISTS stores(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

grocery_list.execute(create_stores_table)
=end 

# create items table 
create_items_table = <<-SQL
  CREATE TABLE IF NOT EXISTS items(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    type VARCHAR(255),
    quantity INT,
    perishable BOOLEAN
  )
SQL
    # user_id INT,
    # store_id INT,
    # FOREIGN KEY (user_id) REFERENCES users(id),
    # FOREIGN KEY (store_id) REFERENCES stores(id)

grocery_list.execute(create_items_table)

# manipulate stores table
# def add_stores(grocery_list, name)
#   grocery_list.execute("INSERT INTO stores (name) VALUES (?)", [name])
# end 

# def delete_stores(grocery_list, id_number)
#   grocery_list.execute("DELETE FROM stores WHERE id = #{id_number}")
# end 

# def print_stores(grocery_list, store)
#   store_list = grocery_list.execute("SELECT * FROM stores")
#   store_list.each do |store|
#     puts "#{store[id]} - #{stores['name']}"
#   end 
# end 

# manipulate items table
def add_items(grocery_list, item, type, quantity, perishable)
  grocery_list.execute("INSERT INTO items (item, type, quantity, perishable) VALUES (?, ?, ?, ?)", [item, type, quantity, "false"])
end 

def delete_items(grocery_list, id_number)
  grocery_list.execute("DELETE FROM items WHERE id = #{id_number}")
end 

# def update_items(grocery_list)

def print_items(grocery_list)
  item_list = grocery_list.execute("SELECT * FROM items")
  item_list.each do |item|
    puts "#{items['id']} - item: #{items['item']}, type: #{items['type']}, quantity: #{items['quantity']}, perishable: #{items['perishable']}" 
  end 
end

# USER INTERFACE
puts "Welcome to the grocery list maker!"
puts "Choose one of the following options:"
  loop do 
    puts "1 - Create a new grocery list"
    puts "2 - View your list"
    puts "'q' - Quit"
    user_choice = gets.chomp 

    break if user_choice == "q"

    if user_choice.to_i == 1
      puts "Creating a new grocery list."
      puts "What is the item you would like to purchase?"
      item = gets.chomp
      puts "What type of item is it? (e.g. food, toiletries, hardware, gardening, etc...."
      type = gets.chomp
      puts "Enter the quantity you would like to buy."
      quantity = gets.chomp.to_i
      puts "Is the item perishable? Enter 'true' or 'false'."
      perishable = gets.chomp
      add_items(grocery_list, item, type, quantity, perishable)
      puts "Here is the information you just entered:"
      print_items(grocery_list)
    elsif user_choice.to_i == 2 
      puts "Here is your grocery list!"
      puts "-" * 20 
      print_items(grocery_list)
    end 
  end 

=begin 
  elsif user_choice.to_i == 2
    puts "If you would like to add a store, enter 'add'."
    puts "If you would like to delete a store, enter 'delete'."
    store_choice = gets.chomp
      if store_choice == 'add'
        puts "Enter the name of the store you would like to add."
        store_name = gets.chomp 
        add_stores(grocery_list, store_name)
      elsif store_choice == 'delete'
        puts "Enter the ID number of the store you would like to delete."
        id = gets.chomp.to_i
        delete_stores(grocery_list, id)
      end 
    puts "Your stores list includes the following:"
    print_stores(grocery_list, store)

  elsif user_choice.to_i == 3 
    puts "Here is your list of items to buy:"
    print_items(grocery_list, items)
    puts "If you would like to add an item, enter 'add'."
    puts "If you would like to delete an item, enter 'delete'."
    item_choice = gets.chomp 
      if item_choice == 'add'
        puts "Enter the name of the store you would like to add."
        store_name = gets.chomp 
        add_items(grocery_list, store_name)
      elsif item_choice == 'delete'
        puts "Enter the ID number of the store you would like to delete."
        id = gets.chomp.to_i 
        delete_items(grocery_list, id)
      end 
  end 
=end 





# definitely want to come back and make this into a more useful program... 
# adding stores, modifying information..


