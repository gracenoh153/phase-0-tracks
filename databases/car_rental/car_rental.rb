# create a car rental program
# allows car rental company to assign rental cars to customers 
  # ask customer car size/mileage preference
  # ask customer car brand preference
# create database that holds following info:
  # table for customer id and name
  # table for car id and brand name
  # table for car specs
# match customer preferences to car available
# ... add to this later on as I build the program

# require gem
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("rental.db")

# create table for customers
create_customers_table = <<-SQL
  CREATE TABLE IF NOT EXISTS customers(
    id INTEGER PRIMARY KEY
    first_name VARCHAR(255)
    last_name VARCHAR(255)
  )
SQL
