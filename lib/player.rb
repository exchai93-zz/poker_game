require_relative 'hand'

class Player

  include CardRanks

  DEFAULT_NUMBER_OF_PLAYERS = ["2", "3", "4", "5"]

  attr_reader :players

  def initialize(hand = Hand.new, score = 0, player_number = 0)
    @player_number = player_number
    @hand = hand
    @score = score
  end

  # def get_player_number
  #   puts "How many players are there? (Choose between 2, 3, 4 and 5)"
  #   players = gets.chomp.to_i
  #   players
  # end

  # if players == DEFAULT_NUMBER_OF_PLAYERS


  # puts get_player_number
  #
  # private
  #
  # attr_writer :players

end
