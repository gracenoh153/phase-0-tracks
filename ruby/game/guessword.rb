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

  def initialize
    @chosen_word = []
    @letters_guessed = []
    @lost_game = false
    @won_game = false
    @out_of_guesses = false
  end 

  def chosen_word(word)
    @chosen_word = word.split("")

  end

  def letters_guessed(letter)
    @letters_guessed << letter
  end 

  def already_guessed(letter)
    @letters_guessed.include?(letter)
  end 

end 


# USER INTERFACE
puts "Let's play a game! You will need at least one other person than yourself."
puts "First player, enter a word. Have someone else guess the word, one letter at a time."
puts "The number of guesses available will be equal to the length of the word."
puts "What is your secret word?"
chosen_word = gets.chomp
puts "Second player, you have #{chosen_word.length} tries to guess the correct word."
secret_word = chosen_word.split("")
store_word = [] 
store_word << secret_word
guess_count = 0 
wrong_guesses = 0 
puts "What is the letter you would like to guess?"
guessed_letter = gets.chomp
until guess_count == chosen_word.length
  if store_word.include?("#{guessed_letter}")
    puts "You have guessed correctly."
    puts "Guess another letter."
    guessed_letter = gets.chomp
  else 
    puts "Incorrect!"
    wrong_guesses += 1 
    puts "Guess another letter."
    guessed_letter = gets.chomp
  end 
  guess_count += 1 
end 





