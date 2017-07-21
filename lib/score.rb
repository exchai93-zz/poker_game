require_relative 'deck'
require_relative 'face_values'

class Score
  include FaceValue
  attr_reader :face_value, :deck

  def initialize(deck = Deck.create_deck)
    @face_value = FACE_VALUES
    @deck = deck
  end

  def get_face_value(card)
    @face_value.key(card)
  end

end
