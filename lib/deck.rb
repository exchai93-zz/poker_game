require_relative 'card'
# Responsibility: Creates a full deck
class Deck
  # Retrieve CardValues module
  include CardProperties
  # Class method which instantiates a full deck of cards
  def self.create_deck
    full_deck = []
    # From the CARD_SUITS hash, retrieve the card symbols
    suits = CARD_SUITS.keys
    # Create an array of card values strings
    values = %W(A 2 3 4 5 6 7 8 9 10 J Q K)
    # Iterate over each suit and value then push them to the full_deck array
    suits.each do |suit|
      values.each do |value|
        card = [value, suit]
        full_deck << card
      end
    end
      Deck.new(full_deck)
   end

  attr_reader :full_deck
  # Deck class is initialized with an empty array named full_deck
  def initialize(full_deck = [])
    @full_deck = full_deck
  end
  # All the elements in the full_deck array are shuffled
  def shuffle
    @full_deck.shuffle!
  end
  # A random card from the deck is returned and removed from the array
  def release_card
    @full_deck.pop
  end
  # Count the number of elements in the full deck of cards
  def count
    @full_deck.length
  end

end
