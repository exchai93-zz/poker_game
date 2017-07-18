require_relative 'card_values'

class Card
  # require CardValues module
  include CardValues
  # method to read attributes
  attr_reader :value, :suit
  # card class is initialized with a value parameter and attribute
  def initialize(value, suit)
    @value = value
    @suit = suit
  end

end
