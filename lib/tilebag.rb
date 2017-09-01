module Scrabble
  class TileBag
    attr_reader :letter_distribution

    def initialize
      @letter_distribution = {
        A: 9,
        B: 2,
        C: 2,
        D: 4,
        E: 12,
        F: 2,
        G: 3,
        H: 2,
        I: 9,
        J: 1,
        K: 1,
        L: 4,
        M: 2,
        N: 6,
        O: 8,
        P: 2,
        Q: 1,
        R: 6,
        S: 4,
        T: 6,
        U: 4,
        V: 2,
        W: 2,
        X: 1,
        Y: 2,
        Z: 1
      }
    end
    #draw_tiles(num)
    # you need to pull random letters from the Distribution
    # access the letter_distribution[random letter]
    # decrement the quantity of available tiles for that letter

    #tiles_remaining returns the number of tiles remaining in the bag
    #sum all letter_distribution.values

  end#of_TileBag
end#of_Scrabble
