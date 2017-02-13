=begin 
* word guessing game class

    * initialize method
        * determine variables

    * method that asks user for word to start game
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

  attr_reader :lost_game, :won_game
  attr_accessor :secret_word, :word_visual, :letter_repeated, :letter_correct

  def initialize(secret_word)
    @secret_word = secret_word
    @letters_guessed = []
    @secret_word_array = []
    @num_tries = 0
  end 

  def word_visual
    secret_word.length.times do 
      @secret_word_array << "_"
    end 
      @secret_word_array.join("")
  end 

  def letter_repeated(letter)
    @letters_guessed.index(letter) == nil 
  end 

  def letter_correct(letter)
    secret_word.index(letter) != nil
    @secret_word_array.delete_at(secret_word.index(letter))
    @secret_word_array.insert(secret_word.index(letter), letter) 
  end 

  def letter_incorrect(letter)
    puts "Nope, guess again...!"
    @num_tries += 1 
  end 

  def lost_game
    puts "Booooo.. You're not so good at this, are you?"
  end 

  def won_game 
    puts "Hooray!! You're awesome at this!"
  end 
end 

# USER INTERFACE
puts "Let's play a game! You will need at least one other person than yourself."
puts "Have the other person guess the word, one letter at a time."
puts "The number of guesses available will be equal to the length of the word."
puts "What is your secret word?"
secret_word = gets.chomp
guess = GuessWord.new(secret_word)
puts "The word is #{secret_word.length} letters long!"
puts guess.word_visual 

while guess.increase_count < guess.secret_word.length 
  puts "Second player, enter a letter"
  letter_guessed = gets.chomp

  if !guess.letter_repeated(letter_guessed)
    puts "You guessed this letter already. Try another one."
  elsif guess.letter_correct(letter_guessed)
    guess.letters_guessed << letter_guessed
    puts guess.secret_word_array.join
    break if guess.secret_word_array.join == secret_word
  elsif guess.letter_incorrect(letter_guessed)
    guess.letters_guessed << letter_guessed
    puts "Nope..."
  end
end 

if guess.secret_word_array.join == secret_word
  guess.won_game
else 
  guess.lost_game
end 


