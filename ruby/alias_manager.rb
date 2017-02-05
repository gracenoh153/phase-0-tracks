# Create method that will take user's name, then create a fake name
# Swap first and last name
# Change each vowel to the next vowel in "aeiou"
  # Ensure edge case: "u" goes to "a"
# Change each consonant goes to the next consonant in alphabet
  # Ensure edge case: "z" goes to "b"
# Create empty hash that will store user names
# Print results to screen

=begin
def swap_first_last(name)
  swapped_name = real_name.split(' ').reverse.join(' ')
end 
=end

def convert_vowel(letter)
  vowels = "aeiou"
  if vowels.include?(letter)
    if letter == "u"
      letter = "a"
    else
      letter = vowels[vowels.index(letter) + 1]
    end
  end
end 




=begin
puts "I am the alias generator."
puts "Please enter your first and last name."
real_name = gets.chomp

=end 