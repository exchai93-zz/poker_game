require_relative 'card'

class Deck
  # Retrieve CardValues module
  include CardValues

  attr_reader :full_deck
  # Deck class is initialized with an empty array named full_deck
  def initialize(full_deck = [])
    @full_deck = full_deck
  end

  # Method to create a new deck of cards
   def create_deck
     @full_deck = []
     # From the CARD_SUITS hash, retrieve the keys
     suits = CARD_SUITS.keys
     # From the CARD_VALUES hash, retrieve the values
     values = CARD_VALUES.values
     # Iterate over each suit and value then push them to the full_deck array
     suits.each do |suit|
       values.each do |value|
         full_deck << Card.new(value, suit)
       end
     end
     Deck.new(full_deck)
   end

end
