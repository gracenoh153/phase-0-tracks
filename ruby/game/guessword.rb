=begin 
* word guessing game class

    * initialize method
        * determine instance variables

    * method that stores chosen word
        * get user word
        * split word into letters
        * store letters in array

    *method that converts length of chosen word into underscores
        * get length of chosen word 
        * display length of word in "_" symbols

    * method that stores guessed letters 
        * get letter
        * store letter in array 

    * method that checks letters against chosen word
        * if guessed letter is within chosen word,
          * delete hash at that location, and replace it with the letter
          * confirm letter has been guessed correctly
        * elsif guessed letter is not within chosen word,
          * confirm guess was incorrect
        * elsif guessed letter has been guessed already,
          * confirm same guess has already been made 
      * return correctly guessed letters array 
      * increase guess count by one  

    * method that checks guesses left
        * total guesses is equal to chosen word length
        * check length of array that stores letters guessed; this equals times already guessed
        * total guesses - already guessed = guesses left 

    * method for end of game
        * if there are no more guesses left and the user has not guessed the correct word
          * game has been lost and game is over
        * if there are no more guesses left and the user has guessed correctly
          * game has been won, and game is over
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
    elsif @guesses_left == 0 && @secret_word.join("") == @secret_word_array.join("")
      @won_game = true
      @game_is_over = true 
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
  puts "You got the word!!!! You're so good at this!! :D :D "
end 