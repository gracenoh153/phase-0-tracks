# Create method that will take user's name, then create a fake name
# Swap first and last name
# Change each vowel to the next vowel in "aeiou"
  # Ensure edge case: "u" goes to "a"
# Change each consonant goes to the next consonant in alphabet
  # Ensure edge case: "z" goes to "b"
# Create empty hash that will store user names
# Print results to screen

def swap_name(name)
  swapped_name = name.split(" ")
  swapped_name.reverse.join(" ")
end 

def convert_letters(name)
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"

  if vowels.include?(letters)
    if letters == "u"
      char = "a"
    else
    end
  end 
end



