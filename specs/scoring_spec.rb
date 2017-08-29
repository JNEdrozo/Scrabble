require_relative 'spec_helper'

describe "Scoring" do
 it "returns an integer for a letter tile" do
   Scrabble::Scoring.score("z").class.must_equal Integer
 end

 it "returns the correct value for a letter tile" do
   Scrabble::Scoring.score("z").must_equal 10
 end


end
