# Create method that will take user's name, then create a fake name
# Swap first and last name
# Change each vowel to the next vowel in "aeiou"
  # Ensure edge case: "u" goes to "a"
# Change each consonant goes to the next consonant in alphabet
  # Ensure edge case: "z" goes to "b"
# Create empty hash that will store user names
# Print results to screen

def convert_letters(name)
  vowels = "aeiou"
  if vowels.include?(name)
    if name == "u"
      name = "a"
    else
      name = vowels[vowels.index(name) + 1]
    end
  end
  consonants = "bcdfghjklmnpqrstvwxyz"
  if name == "z"
    name = "b"
  else
    name = consonants[consonants.index(name) + 1]
  end
end

def alias(name)
  new_alias = ""
  swapped_name = name.split(" ")
  swapped_name.reverse.join(" ")
  swapped_name.
end 




