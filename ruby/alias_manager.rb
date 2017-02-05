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

def swap_converted_name(converted_name)
  secret_agent_name = converted_name.split(' ').reverse.join
end 

secret_name = {}

puts "Welcome to the super secret agent name generator."
puts "Enter your first and last name."
user_name = gets.chomp


