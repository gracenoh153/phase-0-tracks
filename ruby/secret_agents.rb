# create an encryption program that advances each letter of string forward one letter
# define a method called "encrypt"
# start index at 0, and while index is less than the string length,
# for every letter "x" within the index, check if it is equal to "z"
# if equal to "z", replace with the letter "a"
# else, advance each letter by one letter
# increase index until it is less than the string length
# call method
# print result of method 


def encrypt(str1)
  index = 0 
  while index < str1.length
    for x in 0...str1.length
      if str1[x] == "z"
        str1[x] = "a"
      else
        str1[index] = str1[index].next 
      end
    index += 1  
    end 
  end 
  str1
end 

# call method to test results 
# puts encrypt ("abc") # should return "bcd"
# puts encrypt ("zed") # should return "afe"

# create a decryption program that reverses above encryption program
# define a method called "decrypt"
# put entire alphabet in a variable, in this case "alphabet"
# start index at 0, and while index is less that the given string length,
# for every letter "x" within the index, check if it is equal to "a"
# if equal to "a", replace with "z"
# else, go back one letter for each letter 
# increase index until it is less than the given string length
# call method
# print result of method

def decrypt(str2)
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while index < str2.length
    for x in 0...str2.length
      if str2[x] == "a"
        str2[x] = "z"
      else
        decrypt_letter = alphabet[(alphabet.index(str2[index]) - 1)]
        str2[index] = decrypt_letter
      end
    index += 1  
    end 
  end 
  str2
end 

# call method to test results 
# puts decrypt ("bcd") # should return "abc"
# puts decrypt ("afe") # should return "zed"

# upgrade program to ask user if they want to encrypt or decrypt a password
# ask user for password
# print result then exit 

# DRIVER CODE
# ask user for preference
puts "Do you want to decrypt or encrypt a password?"
user_choice = gets.chomp
  until user_choice == "encrypt" || user_choice == "decrypt"
    puts "Not a valid choice. Choose encrypt or decrypt."
    user_choice = gets.chomp
  end 
# ask user for password they want to encrypt/decrypt
puts "What is the password?"
password = gets.chomp
# if choice is to encrypt, call "encrypt" method on user password
  if user_choice == "encrypt"
    puts encrypt(password)
# if choice is to dectypt, call "decrypt" method on user password
  else 
    puts decrypt(password)
  end 

# nested method call test; will output "txpsegjti" then change back to "swordfish"
# puts decrypt(encrypt("swordfish"))

# paired with Nick Jarin 
