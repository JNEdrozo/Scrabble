require_relative 'spec_helper'

describe "Scoring" do
  describe "self#score" do

    it 'check to see if word passed in self.score is a string' do
      word = 100004
      proc { Scrabble::Scoring.score(word) }.must_raise ArgumentError
    end

    it "returns an integer for a letter tile" do
      Scrabble::Scoring.score("z").class.must_equal Integer
    end

    it "returns the correct value for a letter tile" do
      Scrabble::Scoring.score("z").must_equal 10
    end

    it "returns the correct value for a word" do
      Scrabble::Scoring.score("cat").must_equal 5
    end

    it "a seven-tile word returns a 50 point bonus" do
      Scrabble::Scoring.score("animals").must_equal 59
    end

  end#of_self#score

  describe "self#highest_score_from(array_of_words)" do

    it "ensures that input is an array" do
      array_of_words = 12
      proc {Scrabble::Scoring.highest_score_from(array_of_words)}.must_raise ArgumentError
    end

    it "ensures elements in the inputted array are strings" do
      array_of_words = ["apple", "banana", 12, "kiwi"]
      proc {Scrabble::Scoring.highest_score_from(array_of_words)}.must_raise ArgumentError
    end

    it "returns output word with highest score with no ties present" do
      array_of_words = ["apple", "banana", "kiwi"] #[9, 8, 11]
      Scrabble::Scoring.highest_score_from(array_of_words).must_equal "kiwi"
    end

    it "tie-breaker1: the 7-lettered word wins" do
      #if there are multiple words with same lengths pick first word in supplied list

    end

    it "tie-breaker: the shortest word length wins" do
      #if there are multiple words with same lengths pick first word in supplied list

    end

    it "tie-breaker: if there are multiple words with same lengths, " do

    end


  end#of_self#highest_score_from

end#of_Scoring_paragraph
