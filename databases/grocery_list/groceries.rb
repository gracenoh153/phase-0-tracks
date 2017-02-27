# require gem 
require 'sqlite3'

# create database for grocery list 
grocery_list = SQLite3::Database.new("groceries.db")
grocery_list.results_as_hash = true

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
=end 

# create stores table 
create_stores_table = <<-SQL
  CREATE TABLE IF NOT EXISTS stores(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

grocery_list.execute(create_stores_table)

# create items table 
create_items_table = <<-SQL
  CREATE TABLE IF NOT EXISTS items(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    type VARCHAR(255),
    quantity INT,
    perishable BOOLEAN,
    user_id INT,
    store_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (store_id) REFERENCES stores(id)
  )
SQL

grocery_list.execute(create_items_table)

# manipulate stores table
def add_stores(grocery_list, name)
  grocery_list.execute("INSERT INTO stores (name) VALUES (?)", [name])
end 

def delete_stores(grocery_list, id_number)
  grocery_list.execute("DELETE FROM stores WHERE id = #{id_number}")
end 

def print_stores(grocery_list, store)
  store_list = grocery_list.execute("SELECT * FROM stores")
  store_list.each do |store|
    puts "#{store[id]} - #{stores['name']}"
  end 
end 

# manipulate items table
def add_items(grocery_list, item, type, quantity, persishable)
  grocery_list.execute("INSERT INTO items (item, type, quantity, perishable) VALUES (?, ?, ?)", [item, type, quantity, "false"])
end 

def delete_items(grocery_list, id_number)
  grocery_list.execute("DELETE FROM items WHERE id = #{id_number}")
end 

def print_items(grocery_list)
  item_list = grocery_list.execute("SELECT * FROM items")
  item_list.each do |item|
    puts "#{item[id]} - item: #{items['item']}, type: #{items['type']}, quantity: #{items['quantity']}, perishable: #{items['perishable']}" 
  end 
end

# USER INTERFACE
puts "Welcome to the grocery list maker!"
puts "Choose one of the following options:"
loop do 
  puts "1 - Create a new grocery list"
  puts "2 - Modify list of stores"
  puts "3 - Modify list of items"
  puts "4 - View your list"
  puts "'q' - Quit"
  user_choice = gets.chomp 
  break if user_choice == "q"
end 


