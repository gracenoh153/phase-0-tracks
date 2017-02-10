class Santa

  # getter methods 
  attr_reader :ethnicity 
  # setter methods 
  attr_accessor :age, :gender 

  def initialize(gender, ethnicity)

    puts "Initilizing Santa instance ..."
      @gender = gender 
      @ethnicity = ethnicity 
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
    @reindeer_ranking << reindeer_name
    puts "Behave, #{reindeer_name}! Go to the back of the line."
    p @reindeer_ranking
  end 


end 

# DRIVER CODE
=begin 
santa = Santa.new("Female", "White")
santa.speak
santa.eat_milk_and_cookies("sugar cookie")
santa.celebrate_birthday 
puts "Happy birthday! You're now #{santa.age}!"
santa.get_mad_at("Cupid")
santa.gender = "Unicorn"
puts "Santa is a #{santa.gender}."
=end 

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
example_genders = ["a", "b", "c", "d"]
example_ethnicities = ["ab", "cd", "ef", "gh"]
5.times do
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end 
santas.each do
  puts "This Santa is #{@gender} and #{@ethncity}!"
end  
=end

=begin 
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
=end 

example_genders = [
  "agender", "androgynous", "bigender", "cisgender", "gender fluid", 
  "female", "male", "non-binary", "pangender", "queer", "transgender female", 
  "transgender male", "N/A"
]
example_ethnicities = [
  "black", "Latino", "white", "Japanese-African", "prefer not to say", 
  "Mystical Creature (unicorn)", "Alaska Native", "Asian", "Pacific Islander", 
  "Native Hawaiian", "N/A"
]

puts "How many Santas would you like for me to generate?"
amt_santas = gets.chomp.to_i

amt_santas.times do
  new_santa = Santa.new(example_genders.sample, example_ethnicities.sample)
  new_santa.age = rand(141)
  puts "Santa is #{new_santa.gender}, #{new_santa.ethnicity}, and #{new_santa.age} years old."
end 

