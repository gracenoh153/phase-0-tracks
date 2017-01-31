# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

# "zom".<???>
p "zom".insert(2, 'o')
# => “zoom”

# "enhance".<???>
p "enhance".center(17)
# => "    enhance    "

# "Stop! You’re under arrest!".<???>
p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
p "the usual".insert(9, " suspects")
p "the usual" << " suspects"
p "the usual" + " suspects"
#=> "the usual suspects"
p 
# " suspects".<???>
p " suspects".prepend "the usual"
p "the usual" + " suspects"
p "the usual" << " suspects"
# => "the usual suspects"

# "The case of the disappearing last letter".<???>
p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
p "The mystery of the missing first letter".delete "T"
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
p "Elementary,    my   dear        Watson!".squeeze " "
# => "Elementary, my dear Watson!"

# "z".<???>
p "z".each_codepoint {|c| print c}
p "z".gsub(/./) {|s| s.ord.to_s}
p "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
p "How many times does the letter 'a' appear in this string?".count "a"
# => 4