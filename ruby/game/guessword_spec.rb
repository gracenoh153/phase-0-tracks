require_relative 'GuessWord'

describe GuessWord do 

  let (:guess) {GuessWord.new}

  it "get word to guess from user" do
    expect(guess.user_word("word")). to eq(guess.chosen_word)
  end

  it "store letters of secret word in array" do
  end

  it "check if letter guessed exists in word" do
  end

  it "check if letter has already been guessed" do
  end 

  it "store letter guessed in array" do 
  end 

  it "show current progress of guessing secret word" do
  end

  it "show number of guesses remaining" do
  end 

  it "win game" do
  end 

  it "lose game" do
  end 
  


end