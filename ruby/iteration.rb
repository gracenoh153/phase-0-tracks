# create method that takes a block.
# print out status before running block
# print out status after running block

def method
  puts "A block that has not run yet."
  yield("Hello", "World")
end

method { |word1, word2| puts "This block has now run: #{word1} #{word2}!" }

# release 1

# declare array 
hollywood_stars = ["Daniel Radcliffe", "Emma Watson", "Rupert Grint"]

# declare hash 
harry_potter = { 
  "Daniel Radcliffe" => "Harry Potter", 
  "Emma Watson" => "Hermoine Granger", 
  "Rupert Grint" => "Ron Weasley"
}

hollywood_stars.each do |names|
  puts names
end

harry_potter.each do |actor, character|
  puts "#{actor} plays the character #{character} in the Harry Potter movie series."
end

hollywood_stars.map! do |names|
  puts names
  names + " :)"
end
puts hollywood_stars

# release 2