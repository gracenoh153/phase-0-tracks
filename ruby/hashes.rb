=begin
- Collect info about a client (name, age, num children, decor theme, etc)
- Convert user input into appropriate data type
- Print out hash at the end to confirm entry
- Give user chance to update a key
  - if "none", then skip
  - else, ask for new value and update the key
- Print final version of hash, then exit program
=end 

designer_client_info = {}

puts "What is the client's name?"
designer_client_info[:client_name] = gets.chomp

puts "What is the client's age?"
designer_client_info[:client_age] = gets.chomp.to_i

puts "How many children does the client have?"
designer_client_info[:client_kids] = gets.chomp.to_i

puts "What color theme would the client like to have?"
designer_client_info[:client_theme] = gets.chomp

puts "How many rooms would the client like to decorate?"
designer_client_info[:client_rooms] = gets.chomp.to_i

puts "How many floors does their home have?"
designer_client_info[:client_floors] = gets.chomp.to_i

p designer_client_info

puts "Would you like to make any changes to the client information?"
puts "If changes are needed, type 'yes'. If no changes are needed, type 'none'."
make_changes = gets.chomp
