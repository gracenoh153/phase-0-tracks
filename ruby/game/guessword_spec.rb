require_relative 'GuessWord'

describe GuessWord do 

  let (:guess) {GuessWord.new("test")}

  it "stores word in array" do
    expect(guess.store_word("test")).to eq ([["t", "e", "s", "t"]])
  end

  it "gets length of chosen word and puts (underscore * length) into array" do
    expect(guess.visual_rep).to eq ("____")
  end 

  it "store letters guess in array" do
    expect(guess.store_guesses("s")).to eq (["s"])
  end 

  it "checks letter to see if it exists in word" do
    expect(guess.check_letter("s")).to eq ("s")
  end 

  it "gets the number of guesses left" do
    expect(guess.guesses_left). to eq (4)
  end 

  it "compares letters guessed by end of turns, and compares to original word" do
    expect(guess.check_word). to eq (false)  
  end 
  
end