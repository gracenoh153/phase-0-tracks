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
def add_stores()
end 

def delete_stores()
end 

def print_users()
end 

# manipulate items table
def add_items()
end 

def delete_stores()
end 

def print_users()
end

# USER INTERFACE
puts "Welcome to the grocery list maker!"
puts "Choose one of the following options:"
loop do 
  puts "1 - Create a new grocery list"
  puts "2 - Modify list of users"
  puts "3 - Modify list of stores"
  puts "4 - Modify list of items"
  puts "5 - View your list"
  puts "'q' - Quit"
  user_choice = gets.chomp 
  if user_choice != 1 || user_choice != 2 || user_choice != 3 || user_choice != 4 || user_choice != 5 || user_choice != "q"
    puts "Please enter a valid choice."
    user_choice = gets.chomp
  end 
  break if user_choice == "q"
end 