require_relative 'deck'

class Dealer

  include CardValues

  attr_reader :current_deck

  def initialize
    @current_deck = Deck.create_deck
  end

end
