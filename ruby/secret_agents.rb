# Encrypt every letter by changing each character into the next one in the alphabet

# Define a method to encrypt a string
# .next every character in the string
# print the new string

# index the word and then apply .next to every indexed character

# add conditional logic for edge case when string includes "z"
# when encrypted string contains "z" convert output to "a"

def encrypt(string1)
  index = 0
  while index < string1.length
    alpha = "abcdefghijklmnopqrstuvwxyz"
    if string1[index] == "z"
      p "found it"
      p encrypt_edge = (alpha.index(string1[index]))
      p alpha[0]
      p alpha[-1]
    end 
    string1[index] = string1[index].next
    index += 1
  end

  puts string1
end

encrypt("abc")
encrypt("zed")


# Decryption

# Figure out where in the alphabet a letter is located
# Subtract 1 from its index location
# Convert index location to alphabet
# Print result

def decrypt(string2)
  alpha = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < string2.length
    decrypt_letter = alpha[(alpha.index(string2[index]) - 1)]
    string2[index] = decrypt_letter
    index += 1
    if string2[index] == "a"
      string2[index] = "z"
    end  
  end
  puts string2
end

decrypt("bcd")
decrypt("afe")


