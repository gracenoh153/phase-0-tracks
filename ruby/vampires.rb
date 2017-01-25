puts "What's your name?"
user_name = gets.chomp
puts "How old are you?"
user_age = gets.chomp.to_i
puts "What year were you born?"
birth_year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic_bread = gets.chomp
puts "Would you like to enroll in the company's health insurance? (y/n)"
insurance = gets.chomp

current_year = 2017
age = current_year - birth_year

while true 
  if (user_age == age) && ((garlic_bread == "y") || (insurance == "y"))
    puts "Probably not a vampire."
  elsif (age != (current_year - birth_year)) && ((garlic_bread == "n") || (insurance == "n"))
    puts "Probably a vampire."
  elsif (age != (current_year - birth_year)) && (garlic_bread == "n") && (insurance == "n")
    puts "Almost certainly a vampire."
  elsif (user_name == "Drake Cula") || (user_name == "Tu Fang")
    puts "Definitely a vampire."
  else
    puts "Results inconclusive."
  end 
break
end 