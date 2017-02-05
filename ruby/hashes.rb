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
# ask designer/user for client info then assign to empty hash

client_info = {}

puts "Welcome designer! Enter your client's information below:"
puts "Name:"
client_name = gets.chomp
client_info[:client_name] = client_name

puts "Age:"
client_age = gets.chomp.to_i
client_info[:client_age] = client_age

puts "Number of children:"
client_kids = gets.chomp.to_i
client_info[:number_kids] = client_kids

puts "Preferred color theme:"
color_theme = gets.chomp
client_info[:color_pref] = color_theme

puts "Number of rooms to decorate:"
room_number_requested = gets.chomp.to_i
client_info[:num_rooms_requested] = room_number_requested

puts "Likes abstract decor? (yes/no)"
abstract_decor = gets.chomp
  until abstract_decor.downcase == "yes" || abstract_decor.downcase == "no"
    puts "Please enter 'yes' or 'no'."
    abstract_decor = gets.chomp
    if abstract_decor.downcase == "yes"
      abstract_pref = true
    else 
      abstract_pref = false
    end
  end 
client_info[:likes_abstract_decor] = abstract_pref

# print client info
puts "*********************"
puts "client_name: #{client_info[:client_name]}"
puts "client_age: #{client_info[:client_age]}"
puts "client_kids: #{client_info[:number_kids]}"
puts "client_theme: #{client_info[:color_pref]}"
puts "client_rooms: #{client_info[:num_rooms_requested]}"
puts "likes_abstract_decor: #{client_info[:likes_abstract_decor]}"
puts "*********************"

# give opportunity for hash to be corrected
puts "Would you like to change any of the information above?"
puts "Enter 'yes' or if no changes are needed, enter 'none'."
update_info = gets.chomp
  if update_info == "yes"
    puts "Enter which key you would like to update (e.g. client_age)."
    update_key = gets.chomp
    puts "What would you like to change the value to?"
    new_value = gets.chomp
    client_info[update_key.to_sym] = new_value
  end

# print final version of hash 
puts "This is your client's information."
puts "*********************"
puts "client_name: #{client_info[:client_name]}"
puts "client_age: #{client_info[:client_age]}"
puts "client_kids: #{client_info[:number_kids]}"
puts "client_theme: #{client_info[:color_pref]}"
puts "client_rooms: #{client_info[:num_rooms_requested]}"
puts "likes_abstract_decor: #{client_info[:likes_abstract_decor]}"
puts "*********************"
