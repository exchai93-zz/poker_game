require_relative 'deck'
require_relative 'dealer'
require_relative 'player'

class PokerGame

  attr_reader :players, :deck, :dealer

  def initialize
    @players = []
    @deck = Deck.create_deck
    @dealer = Dealer.new
  end

  def play
    number_players = 0
    until number_players >= 2 && number_players <= 5
      puts "How many players are there? Choose between 2, 3, 4 and 5."
      number_players = gets.chomp.to_i
      puts "Ok let's play.\nDealing five cards to #{number_players} players..."
    end

    # Initialize each player with a hand
    for player_number in  1..number_players
      @players << Player.new(Hand.new, 0, player_number)
    end


end
# run game: ruby poker_game.rb
game = PokerGame.new
game.play
