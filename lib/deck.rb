require_relative 'card'

class Deck
  # Retrieve CardValues module
  include CardValues

  def self.create_deck
    full_deck = []
    # From the CARD_SUITS hash, retrieve the keys
    suits = CARD_SUITS.keys
    # From the CARD_VALUES hash, retrieve the values
    values = CARD_VALUES.values
    # Iterate over each suit and value then push them to the full_deck array
    suits.each do |suit|
      values.each do |value|
        card = [suit, value]
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
   def shuffle!
     @full_deck.shuffle!
   end
  # A random card from the deck is returned and removed from the array
  def deal_card
    @full_deck.pop
  end

  def deal_five_cards
    # 5 cards from the deck are returned in an array
    # cards = @full_deck.sample(5)
  end

  def count
    @full_deck.length
  end

end
