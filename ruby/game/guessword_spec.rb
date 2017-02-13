require_relative 'GuessWord'

describe GuessWord do 

  let (:guess) {GuessWord.new}

  it "get word to guess from user" do
    expect(guess.user_word("word")). to eq(guess.chosen_word)
  end

end