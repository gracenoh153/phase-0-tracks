=begin 
* word guessing game class

    * initialize method
        * determine variables

    * method that gets user for word to start game
        * get user word
        * split word into letters
        * store letters in array

    *method that converts length of words into underscores
        * store length of word 
        * set guesses allowed equal to length of word
        * display length of word in "_" symbols

    * method that displays user progress
        * get letter 
        * reduce guesses left by one
        * if letter is found within word
            - replace underscore with letter
            - display progress to user
        * else
            - give visual output that it isn't in the word
        * let user know how many guesses they have left
        * if word has already been guessed before, guesses left remain same

    * method for end of game
        * if user guesses word within number of guesses allowed
            - display congratulatory message
        * else
            - taunt them 
=end 

class GuessWord

attr_reader :guesses_left 
attr_accessor :word_to_guess, :letters_guessed, :game_is_over, :won_game, :lost_game

  def initialize(word_to_guess)
    @secret_word = []
    @secret_word_array = []
    @word_to_guess = word_to_guess
    @guess_count = 0
    @letters_guessed = []
    @guesses_left  
    @game_is_over = false
    @lost_game = false 
    @won_game = false 
  end 

  def store_word(word_to_guess)
    @secret_word << word_to_guess.split("")
  end 

  def visual_rep
    word_to_guess.length.times do 
     @secret_word_array << "_"
    end  
    @secret_word_array.join("")
  end 

  def store_guesses(chosen_letter)
    @letters_guessed << chosen_letter
  end 

  def check_letter(chosen_letter)
    if @word_to_guess.include?(chosen_letter)
      @secret_word_array.delete_at(word_to_guess.index(chosen_letter))
      @secret_word_array.insert(word_to_guess.index(chosen_letter), chosen_letter)
      puts "You got one!"
    elsif @secret_word.include?(chosen_letter) == false 
      puts "Noooope."
    elsif @letters_guessed.include?(chosen_letter)
      puts "You already guessed that!"
    end
    return @secret_word_array.join("")
    return @guess_count += 1 
  end 

  def guesses_left
    total_guesses = @word_to_guess.length 
    already_guessed = @letters_guessed.length
    @guesses_left = total_guesses - already_guessed
    return @guesses_left
  end 

  def check_word
    if @guesses_left == 0 && @secret_word.join("") != @secret_word_array.join("")
      @lost_game = true 
      @game_is_over = true 
    elsif @secret_word.join("") == @secret_word_array.join("")
      @won_game = true
    end
    return @game_is_over
  end 

end 

# USER INTERFACE
puts "Let's play a game!"
puts "Have another person guess the word, one letter at a time."
puts "What is your secret word?"
word_to_guess = gets.chomp
guess = GuessWord.new(word_to_guess)
guess.store_word(word_to_guess)
system "clear"
puts guess.visual_rep
puts ""
puts "The number of guesses available will be equal to the length of the word."
until guess.game_is_over == true 
  puts "Second player, guess a single letter in the word."
  chosen_letter = gets.chomp
  guess.store_guesses(chosen_letter)
  puts guess.check_letter(chosen_letter)
  puts "You have #{guess.guesses_left} guesses left."
  guess.check_word
end 

if guess.lost_game
  puts "You're just not that great at this, are you?..."
elsif guess.won_game
  puts "You're so good at this!!"
end 