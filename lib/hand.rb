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

  def get_hand_value
  values = []
  @cards.to_h.keys.each do |card|
    values << Hand::FACE_VALUES[card]
  end
  values.sum
end

  def hand_is_full?
   @cards.length == NUM_OF_CARDS_IN_HAND
 end

end
