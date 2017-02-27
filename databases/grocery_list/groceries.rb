# require gem 
require 'sqlite3'

# create database for grocery list 
grocery_list = SQLite3::Database.new("groceries.db")
grocery_list.results_as_hash = true

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

# allow users to be added 
def add_users(first_name, last_name)
  grocery_list.execute("INSERT INTO users (first_name, last_name) VALUES (?,?)", [first_name, last_name]) 
end

