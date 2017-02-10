class Santa

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"

    @gender = [
      "agender", "androgynous", "bigender", 
      "cisgender", "gender fluid", "female",
      "male", "non-binary", "pangender", "queer",
      "transgender female", "transgender male", "other"
    ]

    @ethnicity = [
      

    ]
  end 
  
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end 
  
  def initialize
    puts "Initilizing Santa instance ..."
  end 

end 

# santa = Santa.new 
# santa.speak
# santa.eat_milk_and_cookies("sugar cookie")

