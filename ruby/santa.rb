class Santa

  def initialize(gender, ethnicity)
    puts "Initilizing Santa instance ..."

      @gender = gender 
      # [
      #  "agender", "androgynous", "bigender", 
      #  "cisgender", "gender fluid", "female",
      #  "male", "non-binary", "pangender", "queer",
      #  "transgender female", "transgender male", "other"
      #]

      @ethnicity = ethnicity 
      #[
      #  "White", "Black or African American", "American Indian",
      #  "Alaska Native", "Asian", "Pacific Islander", "Native Hawaiian",
      #  "Hispanic, Latino, or Spanish Origin", "other"
      # ]

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
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
    puts "Behave, #{reindeer_name}! Go to the back of the line."
    p @reindeer_ranking
  end 
end 

santa = Santa.new("male", "Santa")
santa.speak
santa.eat_milk_and_cookies("sugar cookie")

=begin 
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
=end 

=begin 
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
=end 
=begin 
santas = []
example_names = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid"]
example_ethnicities = ["White", "Black or African American", "American Indian", 
  "Alaska Native", "Asian", "Pacific Islander", "Native Hawaiian"]
example_names.length.times do |index|
  santas << Santa.new(example_names[index], example_ethnicities[index])
end 
=end 