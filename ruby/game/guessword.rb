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

=begin 
class GuessWord
  attr_accessor :word 

  def initialize
    @chosen_word = []
    @user_guess = ""
    @letters_guessed = []
    @user_guesses = 0
  end 

  def chosen_word(word)
    @chosen_word = word.split("")
  end

end 
=end 

# USER INTERFACE
puts "Let's play a game!"
puts "Enter a word, and have someone else guess the word, one letter at a time."
puts "The number of guesses available will be equal to the length of the word."
puts "What is your secret word?"
secret_word = gets.chomp
secret = secret_word.split("")
store_word = [] 
store_word << secret_word
p secret
p secret.count 

guess_count = 0 

until guess_count == secret_word 
end 





