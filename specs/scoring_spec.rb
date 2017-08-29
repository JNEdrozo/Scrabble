require_relative 'spec_helper'

describe "Scoring" do
  describe "#score" do

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

  end

end

# describe "#self.highest_score_from(array_of_words)"
#
# end
