puts "What's the hamster's name?"
hamster_name = gets.chomp
puts "How noisy is the hamster from a scale of 1-10?"
volume = gets.chomp
puts "What is the fur color?"
fur_color = gets.chomp
puts "Is the hamster a good candidate for adoption? y/n"
adoption = gets.chomp
puts "What is the hamster's estimated age?"
age = gets.chomp
  if age == " "
    age = nil
  end 
