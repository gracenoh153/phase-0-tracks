def method
  puts "A block that has not run yet."
  yield("Hello", "World")
end

method { |word1, word2| puts "This block has now run: #{word1} #{word2}!" }