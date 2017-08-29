require_relative 'spec_helper'

describe "Scoring" do
 it "returns an integer for a letter tile" do
   Scrabble::Scoring.score("z").class.must_equal Integer
 end

 it "returns the correct value for a letter tile" do
   Scrabble::Scoring.score("z").must_equal 10
 end


  it 'check to see if word passed in self.score is a string' do
    #arrange/set up variable
    word = "cat"
    word_test = Scrabble::Scoring.score(word)
    #action/call the method being tested
    word_test.score.must_equal String
    #assert/check results
  end

  # it 'check to see if word passed in self.score is a string' do
  #   #arrange/set up variable
  #   word = "cat"
  #   word_test = Scrabble::Scoring.new(word)
  #   #action/call the method being tested
  #   word_test.score.must_equal
  #   #assert/check results
  # end

end
