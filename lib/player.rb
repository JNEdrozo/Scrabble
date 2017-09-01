module Scrabble
  class Player
    attr_reader :name, :plays

    def initialize(name)
      raise ArgumentError.new("Name must be a string") if !name.is_a? String
      @name = name
      @plays = []

    end

    #plays method: returns an Array of the words played by the player
    def plays
      return @plays
    end

    def play(word)
      @plays << word.upcase #Adds the input word to the plays Array
      return Scrabble::Scoring.score(word)
      #Returns false if player has already won
      #Returns the score of the word
    end

    def total_score #Returns the sum of scores of played words
      @plays.map { |word| Scrabble::Scoring.score(word) }.reduce(:+)
    end

    # private   #won? should be a private method
    def won?
      #won?: If the player has over 100 points, returns true, otherwise returns false
      if total_score >= 100
        return true
      else
        return false
      end
    end

    def highest_scoring_word
      word_score_pairs = map_word_scores #capture the word_score_hash return value
      max_pair = word_score_pairs.max_by{|word, value| word}
      #max_pair will be max word => max score
      return max_pair[0]
    end

    def highest_word_score
      word_score_pairs = map_word_scores #capture the word_score_hash return value
      max_pair = word_score_pairs.max_by{|word, value| value}
      #max_pair will be max word => max score
      return max_pair[1]
    end

    private
    def map_word_scores
      word_score_hash = {}
      @plays.map do |word|
        word_score_hash[word] = Scrabble::Scoring.score(word)
      end
      return word_score_hash
    end

  end#of_Player_class
end#of_Scrabble_module
