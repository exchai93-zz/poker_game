require_relative 'dealer'
require_relative 'card_properties'

NUM_OF_CARDS_IN_HAND = 5

class Hand
  include CardProperties

  attr_reader :cards, :hand_value

  def initialize
    @cards = []
    @hand_value = hand_value
  end

end
