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
        full_deck << Card.new(value, suit)
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
  # A random card from the deck is returned
  def deal_card
    card = @full_deck.sample
    @full_deck.delete(card)
  end

  def deal_five_cards
    # 5 cards from the deck are returned in an array
    cards = @full_deck.sample(5)
    @full_deck.delete_at(cards)

    # @full_deck.delete_if {|card| card }
    # @full_deck.reject! {|card|}
  end

  def count
    @full_deck.length
  end

  private

  def get_random_card_from_deck
    @full_deck.sample
  end

  def remove_card_from_deck(card)
    @full_deck.delete(card)
  end

  def remove_cards_from_deck(cards)
    @full_deck.delete(cards)
  end

end
