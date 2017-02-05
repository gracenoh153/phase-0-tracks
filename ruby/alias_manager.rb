# Create method that will take user's name, then create a fake name
# Swap first and last name
# Change each vowel to the next vowel in "aeiou"
  # Ensure edge case: "u" goes to "a"
# Change each consonant goes to the next consonant in alphabet
  # Ensure edge case: "z" goes to "b"
# Create empty hash that will store user names
# Print results to screen


def converted_name(user_name)
  vowels = ['a', 'e', 'i', 'o', 'u']
  consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 
                'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
  user_name = user_name.split('')
  new_letters = user_name.map do |letter|
    if vowels.include?(letter)
      vowels.rotate(1)[vowels.index(letter)]
    elsif consonants.include?(letter) 
      consonants.rotate(1)[consonants.index(letter)]
    else 
      letter
    end
  end
  new_letters.join
end

secret_agent_names = {}
user_name = nil

puts "Welcome to the super secret agent name generator."
puts "Enter the name you would like to convert."
puts "Enter 'quit' when you are done!"
until user_name == "quit"
  user_name = gets.chomp.downcase
  new_secret_name = converted_name(user_name) # store new fake name
  puts "Your super secret agent name is: #{new_secret_name}"
  secret_agent_names[user_name] = new_secret_name # store names in hash
  puts "Enter another name, or enter 'quit'."
end 

secret_agent_names.each do |real_name, agent_name| 
  puts "#{real_name}'s new super secret agent name is #{agent_name}!"
end 
