require_relative 'spec_helper'

describe "Scoring" do
  # before do
  #   @test_scoring = Scrabble::Scoring.new
  # end

  it 'can create an instance of scoring' do
    letters_score = Scrabble::Scoring.new
    letters_score.must_be_instance_of Scrabble::Scoring
  end

  it 'returns a hash of letters and their score values' do
    letters_score = Scrabble::Scoring.new
    letters_score.must_be_kind_of Array #should be a hash
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
