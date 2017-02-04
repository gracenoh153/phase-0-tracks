=begin
- Collect info about a client (name, age, num children, decor theme, etc)
- Convert user input into appropriate data type
- Print out hash at the end to confirm entry
- Give user chance to update a key
  - if "none", then skip
  - else, ask for new value and update the key
- Print final version of hash, then exit program
=end 

# establish empty hash
designer_client_info = {}

# ask designer/user for client info then assign to empty hash
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

puts "How many floors does the client's home have?"
designer_client_info[:client_floors] = gets.chomp.to_i

# print client info
puts "*********************"
puts "client_name: #{designer_client_info[:client_name]}"
puts "client_age: #{designer_client_info[:client_age]}"
puts "client_kids: #{designer_client_info[:client_kids]}"
puts "client_theme: #{designer_client_info[:client_theme]}"
puts "client_rooms: #{designer_client_info[:client_rooms]}"
puts "client_floors: #{designer_client_info[:client_floors]}"
puts "*********************"

# give opportunity for hash to be corrected
puts "Do any of the keys need to be changed/updated?"
puts "If changes are needed, type 'yes'. If no changes are needed, type 'none'."
make_changes = gets.chomp

if make_changes.downcase == "yes"
  puts "Enter the key (e.g. 'client_theme') you would like to change."
  key_change = gets.chomp
  puts "What would you like to change the value to?"
  new_value = gets.chomp
  designer_client_info[key_change.to_sym] = new_value
end 

# print final version of hash 
puts "This is your client's information."
puts "*********************"
puts "client_name: #{designer_client_info[:client_name]}"
puts "client_age: #{designer_client_info[:client_age]}"
puts "client_kids: #{designer_client_info[:client_kids]}"
puts "client_theme: #{designer_client_info[:client_theme]}"
puts "client_rooms: #{designer_client_info[:client_rooms]}"
puts "client_floors: #{designer_client_info[:client_floors]}"
puts "*********************"
