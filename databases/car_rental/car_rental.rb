# create a Hyundai car recommendation program 
# recommends car based on preferences 
  # ask car type preference
  # ask car mileage preference
  # ask if want A/C
# create database that holds following info:
  # table for user id and name
  # table for car id and brand name
  # table for car specs
# match user preferences to car available
# recommend car to user 

# require gem
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("rental.db")

# create table for customers
create_customers_table = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
  )
SQL

# create a customers table (if it hasn't been made already)
db.execute(create_users_table)

# add test customer
# db.execute("INSERT INTO users (first_name, last_name) VALUES ("Grace", "Noh")")

# create table for car brands
create_car_brand_table = <<-SQL
  CREATE TABLE IF NOT EXISTS car_brand(
    id INTEGER PRIMARY KEY,
    brand_name VARCHAR(255)
  )
SQL

# create a table for car brands if it doesn't already exist
db.execute(create_car_brand_table)

# add test brand 
# db.execute("INSERT INTO car_brand (brand_name) VALUES ("Hyundai")")

# create a car specifications table 
create_car_specs_table = <<-SQL
  CREATE TABLE IS NOT EXISTS car_specs(
    id INTEGER PRIMARY KEY,
    car_type VARCHAR(255),
    mileage(city) INT,
    mileage(hwy) INT,
    air_conditioning BOOLEAN,
    car_brand_id INT,
    customer_id INT,
    FOREIGN KEY (car_brand_id) REFERENCES car_brand(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
  )
SQL

# create table for car specs if it doesn't already exist
db.execute(create_car_specs_table)

# add test specs 
# db.execute("INSERT INTO car_specs (car_type, mileage, air_conditioning, car_brand_id, customer_id) VALUES ("small", 27, 37, "true", 1, 1)
# 
