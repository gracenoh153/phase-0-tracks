=begin 
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :D"
  end 
end

puts Shout.yell_angrily("I can't believe they're out of chicken pot pie again")
puts Shout.yelling_happily("They're serving my favorite dessert today")
=end 

module Shout
  def yell_angrily(words)
    words + "!!!" + " >:("
  end

  def yell_happily(words)
    words + "!!!" + " :D :D "
  end
end

class Puppy
  include Shout
end

class Weather
  include Shout
end 

spot = Puppy.new
puts spot.yell_happily("You are so cute")

rain = Weather.new
puts rain.yell_angrily("It's raining again")
