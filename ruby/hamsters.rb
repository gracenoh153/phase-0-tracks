puts "What's the hamster's name? If it has no name, name the hamster."
hamster_name = gets.chomp

puts "How noisy is the hamster from a scale of 1-10?"
volume = gets.chomp.to_i
  while (volume < 1) || (volume > 10)
    puts "Invalid answer. Please enter a number between 1 and 10."
    volume = gets.chomp.to_i
  end 

puts "What is the fur color?"
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption? yes/no"
adoption = gets.chomp
  until (adoption.downcase == "yes") || (adoption.downcase == "no")
    puts "Invalid answer. Please enter \'yes\' or \'no\'."
    adoption = gets.chomp
  end 

puts "What is the hamster's estimated age? Leave blank if unknown."
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