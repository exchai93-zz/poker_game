require_relative 'deck'
require_relative 'card_ranks'

class Hand

  include CardValues
  include CardRanks

  attr_reader :cards

  def initialize
    @cards = []
  end

  # def rank
  #   rank = CARD_RANK.values
  #   rank
  # end

end
