require_relative 'hand'

class Player

  attr_reader :player_number, :hand, :score

  def initialize(hand = Hand.new, score = 0, player_number = 0)
    @player_number = player_number
    @hand = hand
    @score = score
  end

end
