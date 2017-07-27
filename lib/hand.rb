require_relative 'card_properties'

class Hand
  include CardProperties

  attr_reader :hand_value
  attr_accessor :cards

  NUM_OF_CARDS_IN_HAND = 5

  def initialize
    @cards = []
    @hand_value = hand_value
  end

  # Hand draws one card, once the hand is full the value will be calculated.
  def draw(card)
   @cards << card
   if hand_is_full?
     get_hand_value
   end
  end
  # Calculates the value of the hand by each face value
  def get_hand_value
    values = []
    @cards.to_h.keys.each do |card|
      values << Hand::FACE_VALUES[card]
    end
    values.sum
  end
  # Returns true if the number of cards in hand reaches 5
  def hand_is_full?
   @cards.length == NUM_OF_CARDS_IN_HAND
  end
  # Shows the cards in a string format
  def display_cards_in_hand
    @cards.collect do |card|
      card.join
    end.join(", ")
  end

end
