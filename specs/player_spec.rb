require_relative 'spec_helper'

# describe "Player" do
#   before "Player Instance" do
#     @player_test = Scrabble::Player.new("PlayerName")
#   end
#
#   describe "#name" do
#     it "returns the value of the @name instance variable" do
#       @player_test.name.must_equal "PlayerName"
#     end
#
#     it "ensures name is a string" do
#       proc { Scrabble::Player.new(["name", 2, :test]) }.must_raise ArgumentError
#     end
#   end
#
#   describe "#plays" do
#     it "returns an Array of the words played by the player" do
#       @player_test.plays.class.must_equal Array
#     end
#   end
#
#   describe "#play(word)" do
#     it "adds the input word to the play array" do
#       @player_test.play("word")
#       word_array = @player_test.plays
#       word_array.include?("WORD").must_equal(true)
#     end
#
#     it "returns the score of the word" do
#       word = "apple" #9
#       expected_output = 9
#       @player_test.play(word).must_equal(expected_output)
#     end
#
#     # Returns false if player has already won
#     # Returns the score of the word
#
#   end
#
#   describe "#total_score" do
#     it "Returns the sum of scores of played words" do
#       score1 = @player_test.play("apple")
#       score2 = @player_test.play("banana")
#       score3 = @player_test.play("kiwi")
#       expected_output = score1 + score2 + score3
#
#       @player_test.total_score.must_equal(expected_output)
#     end
#
#     it "returns the score of the word" do
#       word = "apple" #9
#       expected_output = 9
#       @player_test.play(word).must_equal(expected_output)
#     end
#
#     # Returns false if player has already won
#     # Returns the score of the word
#
#   end
#
#   #Player::#won?
#   #test_0001_returns true if the player has over 100 points, otherwise returns falseERROR (0.00s)
#   #NoMethodError: private method `won?' called for #<Scrabble::Player:0x007fcef08735b8>
#   #/Users/janedrozo/Desktop/C8/Scrabble_JE/specs/player_spec.rb:68:in `block (3 levels) in <top (required)>'
#   describe "#won?" do
#     it "returns true if the player has over 100 points, otherwise returns false" do
#       @player_test.play("animals")
#       @player_test.play("animals")
#       @player_test.play("animals") #total_score = 177
#       @player_test.won?.must_equal(true)
#     end
#
#     it "returns false if the player has less than 100 points" do
#       @player_test.play("apple")
#       @player_test.play("banana")
#       @player_test.play("kiwi")
#       @player_test.won?.must_equal(false)
#     end
#   end
#
#   describe "#highest_scoring_word" do
#     it "returns the highest scoring played word" do
#       @player_test.play("apple") #9
#       @player_test.play("banana") #8
#       @player_test.play("kiwi") #11
#       @player_test.highest_scoring_word.must_equal("KIWI")
#     end
#   end
#
#   describe "#highest_word_score" do
#     it "returns the highest_scoring_word score" do
#       @player_test.play("apple") #9
#       @player_test.play("banana") #8
#       @player_test.play("kiwi") #11
#       @player_test.highest_word_score.must_equal(11)
#     end
#   end
# end#of_"Player"
