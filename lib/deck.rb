require_relative 'card'

class Deck
  # Retrieve CardValues module
  include CardValues

  attr_reader :full_deck
  # Deck class is initialized with an empty array named full_deck
  def initialize( full_deck = [])
    @full_deck = full_deck
  end


end
