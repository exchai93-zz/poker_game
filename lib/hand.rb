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

  def draw(card)
   @cards << card
   if hand_is_full?
     get_hand_value
   end
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

  def display_cards_in_hand
   str = ""
   @cards.flatten.each { |card| str += "#{card.to_s}" } #try and take out of array? into just string
   str.scan(/../)
  end

end
