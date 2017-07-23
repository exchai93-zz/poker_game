require_relative 'card_properties'
# Responsibility: Make a single card
class Card
  include CardProperties
  # Method to read attributes
  attr_reader :value, :suit
  # Card class is initialized with a value and suit symbol
  def initialize(value="A", suit=:C)
    @value = value
    @suit = suit
  end
  # Converts card value and suit symbol to a string
  def to_s
    "#{@value} #{CARD_SUITS[@suit]}"
  end

end
