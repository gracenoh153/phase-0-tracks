puts "What's the hamster's name?"
hamster_name = gets.chomp

puts "How noisy is the hamster from a scale of 1-10?"
volume = gets.chomp.to_i


puts "What is the fur color?"
fur_color = gets.chomp


puts "Is the hamster a good candidate for adoption? y/n"
adoption = gets.chomp


puts "What is the hamster's estimated age?"
input_age = gets.chomp

if input_age.empty?
  age = nil
else
  age = input_age.to_i
end

puts "Hamster's name: #{hamster_name}"
puts "Volume level: #{volume}"
puts "Fur color: #{fur_color}"
puts "Good candidate for adoption: #{adoption}"
puts "Age of hamster: #{age}"

# paired with Brad Tamura