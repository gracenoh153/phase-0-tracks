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
numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
number_hash = {
  0 => "Zero",
  1 => "One",
  2 => "Two",
  3 => "Three",
  4 => "Four",
  5 => "Five",
  6 => "Six",
  7 => "Seven",
  8 => "Eight",
  9 => "Nine",
  10 => "Ten"
}

#Array Methods
p numbers.delete_if { |x| x < 5}
p numbers.select { |x| x < 5}
p numbers.drop_while { |x| x < 5}
p numbers.delete_if { |x| x >= 0}

#Hash Methods
p number_hash.delete_if {|key, value| key < 5}
p number_hash.select {|key, value| key > 5} 
p number_hash.keep_if { |key, value| key < 5}
p number_hash.has_value?("Zero")
p number_hash.has_value?("Twelve")
