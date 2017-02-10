class Santa

  def initialize
    puts "Initilizing Santa instance ..."

    @gender = [
      "agender", "androgynous", "bigender", 
      "cisgender", "gender fluid", "female",
      "male", "non-binary", "pangender", "queer",
      "transgender female", "transgender male", "other"
    ]

    @ethnicity = [
      "White", "Black or African American", "American Indian",
      "Alaska Native", "Asian", "Pacific Islander", "Native Hawaiian",
      "Hispanic, Latino, or Spanish Origin", "other"
    ]

    @reindeer_ranking = [
      "Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", 
      "Comet", "Cupid", "Donner", "Blitzen"
    ]

    @age = 0
  end 

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end 
  
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end 

  def celebrate_birthday
    @age += 1
  end 

  def get_mad_at(reindeer_name)
    p @reindeer_ranking
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.push(reindeer_name)
    puts "Behave, #{reindeer_name}! Go to the back of the line."
    p @reindeer_ranking
  end 
end 

# santa = Santa.new 
# santa.speak
# santa.eat_milk_and_cookies("sugar cookie")

santas = []