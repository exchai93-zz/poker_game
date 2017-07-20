require_relative 'hand'

class Player

  include CardRanks

  CARDS_IN_HAND = 5

  attr_reader :player_number, :hand, :score

  def initialize(hand = Hand.new, score = 0, player_number = 0)
    @player_number = player_number
    @hand = hand
    @score = score
  end

  def get_player_number
    while true
      puts "How many players are there? Choose between 2, 3, 4 and 5"
      input = gets.chomp.to_i
      break if (input == 2 || input == 3 || input == 4 || input == 5)
        puts "Oops. Please input a valid number of players."
    end
  end

  private

  attr_writer :player_number 

end

player = Player.new

player.get_player_number
