require 'sqlite3'

grocery_list = SQLite3::Database.new("groceries.db")
grocery_list.results_as_hash = true

create_table_user = <<-SQL
  CREATE TABLE IF NOT EXISTS user(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
  )
SQL

grocery_list.execute(create_table_user)

