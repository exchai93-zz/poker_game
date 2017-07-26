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

    # Deal 5 cards to each player
    5.times do
      @players.each do |player|
        player.hand.draw(@dealer.deal)
      end
      puts "Player #{player.player_number} cards in hand:#{player.hand.display_cards_in_hand}"
    end

    # Show scores
    scores = []
    @players.each do |player|
      puts "Player #{player.player_number} score: #{player.hand.get_hand_value}"
      scores << [player.player_number, player.hand.get_hand_value]
    end
    # Calculate winner
    score_board = scores.sort {|a,b| a[1] <=> b[1]}.reverse!
    puts "The winner is player #{score_board[0][0]}. Score: #{score_board[0][1]}"
    end


end
# run game: ruby poker_game.rb
game = PokerGame.new
game.play
