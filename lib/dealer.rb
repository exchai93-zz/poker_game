require_relative 'deck'

class Dealer

  attr_reader :deck
  # Dealer class is initialized with a full deck
  def initialize(deck = Deck.create_deck)
    @deck = deck
  end
  # The full deck is shuffled and one card is dealt
  def deal
    @deck.shuffle
    @deck.release_card
  end

end
