require_relative 'GuessWord'

describe GuessWord do 

  let (:guess) {GuessWord.new}

  it "get word to guess from user" do
    expect(guess.chosen_word).to eq "unicorn"
  end

  it "increment number of guesses" do
    expect(guess.guess_count).to eq 0 
  end

  it "check if letter guessed exists in word" do
    expect 
  end

  it "check if letter has already been guessed" do
    expect 
  end 

  it "store letter guessed in array" do 
    expect 
  end 

  it "show current progress of guessing secret word" do
    expect 
  end

  it "show number of guesses remaining" do
    expect 
  end 

  it "win game" do
    expect 
  end 

  it "lose game" do
    expect 
  end 



end