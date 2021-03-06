# Virus Predictor

# I worked on this challenge [by myself, with: Natalie Yip].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# pulls in a file from anywhere in your computer; 
# if no start point specified, looks in the same file you are in currently
# require looks within Ruby; otherwise, it starts in C

require_relative 'state_data'

class VirusPredictor

  # initializes the method with instance variables; has three parameters
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calling two different methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private # makes everything underneath private; inaccessible to outside objects

  # method that predicts deaths based on population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05 
    end

    number_of_deaths = (@population * multiplier).floor 

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # method that calculates speed of spread based on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    # use case statement here 
    speed = case @population_density
      when 200..999
        0.5
      when 150..199
        1
      when 100..149
        1.5
      when 50..99
        2
      else 
        2.5
      end 
      speed

     # speed = 0.0
     # if @population_density >= 200
     #   speed += 0.5
     # elsif @population_density >= 150
     #   speed += 1
     # elsif @population_density >= 100
     #   speed += 1.5
     # elsif @population_density >= 50
     #   speed += 2
     # else
     #   speed += 2.5
     # end
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, data|
  diff_states = VirusPredictor.new(state, data[:population_density], data[:population])
  diff_states.virus_effects
end 


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin 
# What are the differences between the two different hash syntaxes shown in the state_data file?
  There's no difference in the end result of the two syntaxes. 
  ":key => value" is the exact same as "key: value" ... Although to my understanding,
  the latter is the more "modern" way to do it.

# What does require_relative do? How is it different from require?
  require_relative pulls in a file from anywhere in your computer/specified location; 
  if no start point specified, looks in the same file you are in currently.
  require looks within Ruby; otherwise, it starts in C

# What are some ways to iterate through a hash?
  hash_name.each 
  hash_name.each_key 
  hash_name.each_value

# When refactoring virus_effects, what stood out to you about the variables, if anything?
  

# What concept did you most solidify in this challenge?
  The "private" method was definitely a very interesting one. It's one that I could see being
  very useful in any number of situations. In addition, the assignment gave a nice reminder/
  refresher in accessing nested data structures (before the big assessment!).
=end 