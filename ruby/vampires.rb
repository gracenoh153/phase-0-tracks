# process multiple employees

puts "How many employees do you want to process?"
num_employees = gets.chomp.to_i
employee_count = 0
until employee_count == num_employees

  # vampire detection... ask the user some basic questions

  puts "What's your name?"
  user_name = gets.chomp

  puts "How old are you?"
  user_age = gets.chomp.to_i

  puts "What year were you born?"
  birth_year = gets.chomp.to_i

<<<<<<< HEAD
  puts "Our company makes amazing garlic bread. Would you like some? (y/n)"
=======
  puts "Our cafeteria has amazing garlic bread. Would you like some? (y/n)"
>>>>>>> c065bfac4a37b5e985eb16ac40b6c28492eeaac2
  garlic_bread = gets.chomp
    until (garlic_bread.downcase == "y") || (garlic_bread.downcase == "n")
      puts "Please enter \'y\' or \'n\'."
      garlic_bread = gets.chomp
    end

  puts "Would you like to enroll in our company's health insurance? (y/n)"
  insurance = gets.chomp
    until (insurance.downcase == "y") || (insurance.downcase == "n")
      puts "Please enter \'y\' or \'n\'."
      insurance = gets.chomp
    end

  puts "Do you have any allergies? Enter them one at a time. When finished, type \'done\'."
  allergies = gets.chomp
    until allergies == "done"
        if allergies.downcase == "sunshine"
          break
        else 
          puts "Any other allergies?"
          allergies = gets.chomp
        end
    end      

  # initiate vampire detection logic!

  current_year = 2017
  user_actual_age = current_year - birth_year

  if user_name == "Drake Cula" || user_name == "Tu Fang"
    puts "Definitely a vampire."
  elsif allergies.downcase == "sunshine"
    puts "Probably a vampire."
<<<<<<< HEAD
  elsif (user_actual_age != user_age) && (garlic_bread == "n" && insurance == "n")
    puts "Almost certainly a vampire."
  elsif (user_actual_age != user_age) && (garlic_bread == "n" || insurance == "n")
    puts "Probably a vampire."
  elsif (user_actual_age == user_age) && (garlic_bread == "y" || insurance == "y")
=======
  elsif (user_actual_age != user_age || (user_actual_age - 1)  != user_age) && (garlic_bread == "n" && insurance == "n")
    puts "Almost certainly a vampire."
  elsif (user_actual_age != user_age || (user_actual_age - 1) != user_age) && (garlic_bread == "n" || insurance == "n")
    puts "Probably a vampire."
  elsif (user_actual_age == user_age || (user_actual_age - 1) == user_age) && (garlic_bread == "y" || insurance == "y")
>>>>>>> c065bfac4a37b5e985eb16ac40b6c28492eeaac2
    puts "Probably not a vampire."
  else
    puts "Results inconclusive."
  end 
<<<<<<< HEAD
=======

>>>>>>> c065bfac4a37b5e985eb16ac40b6c28492eeaac2
  # increase employee count by one, until it equals the number of employees you want to process
  employee_count += 1
end 

# plot twist...

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."