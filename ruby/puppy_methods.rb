class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    puts 'woof!' * int
  end

  def rollover
    puts "*rollover*"
  end

  def dog_years(human_year)
    dog_year = human_year * 7
    puts dog_year
  end

  def jump
    puts "*jumps*"
  end

end

puppy = Puppy.new
puppy.fetch('ball')
puppy.speak(3)
puppy.rollover
puppy.dog_years(3)
puppy.jump 
