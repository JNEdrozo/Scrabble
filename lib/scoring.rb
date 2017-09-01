module Scrabble
  class Scoring

    LETTER_VALUES = {
      A: 1,
      B: 3,
      C: 3,
      D: 2,
      E: 1,
      F: 4,
      G: 2,
      H: 4,
      I: 1,
      J: 8,
      K: 5,
      L: 1,
      M: 3,
      N: 1,
      O: 1,
      P: 3,
      Q: 10,
      R: 1,
      S: 1,
      T: 1,
      U: 1,
      V: 4,
      W: 4,
      X: 8,
      Y: 4,
      Z: 10
    }

    #returns the total score for the given word
    def self.score(word)
      raise ArgumentError.new("Word argument must be a string") if !word.is_a? String
      pattern = /^[a-zA-Z]+/
      #UPDATE: raise error if word is not alpha (else doesn't need a condition)
      # if !word[/^[a-zA-Z]+/] != word
      # if pattern.match(word) != true why error?
      if pattern.match(word) == false
        raise ArgumentError.new("Word argument contain only letters")
      elsif word.length > 7
        raise ArgumentError.new("Word argument cannot be longer than 7 letters")
      end

      word = word.upcase.split("")
      score = word.map { |letter| LETTER_VALUES[letter.to_sym] }.reduce(:+)
      word.length == 7 ? score += 50 : score
    end

    #returns the word in the array with the highest score
    def self.highest_score_from(array_of_words)
      raise ArgumentError.new("Input must be an Array") if !array_of_words.is_a? Array
      raise ArgumentError.new("elements inside array must be strings") if !array_of_words.all? { |word| word.is_a? String}
      array_of_words.reduce do |best, word|
        best_word(word, best)
      end
    end

    def self.best_word(left, right) #returns left if the left-hand word is better than the right-hand, otherwise return right
      score_left = self.score(left) # score for KIWI
      score_right = self.score(right) # score for apple
      # Check to see if one is greater than the other
      if score_left > score_right
        return left
      elsif score_right > score_left
        return right
      end
      # If tied, return the first 7 letter word
      if right.length == 7
        return right
      elsif left.length == 7
        return left
      end
      # Otherwise, return the shortest word
      if left.length < right.length
        return left
      else
        return right
      end
    end

  end#of_Scoring_class
end#of_Scrabble_module


#Tie Breaker Ideas

# max_score = 0
# max_word = ""
#
# word_score_pairs.each do |word, score|
#   # Calculate word with highest score:
#   if score > max_score
#     max_score = score
#     max_word = letter
#   end
# end
#
# puts "\n\n#{word_score_pairs[max_word]} wins with a grand total of #{max_score} points!"
#
# #TIE BREAKER: Prints other candidates with the same vote score as the maximum vote score.
#
# vote_scoreer.each do |letter, score|
#   if score == max_score && letter != max_word
#     puts "\nOh, but look! It's a tie: #{letter_map[letter]} has the same vote score with a total of #{score} votes!\n"
#   end
# end

# "array_of_words.all? {|word| word.is_a? String}" returns either TRUE or FALSE
# If true, the all? method continues to the next element in the array to test.

# word_score_pairs = {}
#
# array_of_words.map do |word|
#   word_score_pairs[word] = self.score(word)
# end
#
# # https://stackoverflow.com/questions/6040494/how-to-find-the-key-of-the-largest-value-hash
# max_pair = word_score_pairs.max_by{|word, value| word}
# #max_pair will be max word => max score
#
# return max_pair[0]
