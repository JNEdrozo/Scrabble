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

end
