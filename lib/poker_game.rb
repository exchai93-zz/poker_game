require_relative 'deck'
require_relative 'dealer'
require_relative 'player'

class PokerGame

  attr_reader :players, :deck, :dealer

  MIN_NUM_PLAYERS = 2
  MAX_NUM_PLAYERS = 5

  def initialize
    @players = []
    @deck = Deck.create_deck
    @dealer = Dealer.new
  end

  def play
    set_player_number
    create_players
    deal_cards
    get_winner
  end

private
  # Get user input for how many players
  def set_player_number
    number_players = 0
    until number_players >= MIN_NUM_PLAYERS && number_players <= MAX_NUM_PLAYERS
      puts "How many players are there? Choose between 2, 3, 4 and 5."
      number_players = gets.chomp.to_i
      puts "Ok let's play.\nDealing five cards to #{number_players} players..."
    end
    number_players
  end

  # Create number of players according to user input
  def create_players
    for player_number in  1..set_player_number
      @players << Player.new(Hand.new, 0, player_number)
    end
  end

  # Deal 5 cards to each player
  def deal_cards
    5.times do
      @players.each do |player|
        player.hand.draw(@dealer.deal)
      end
      puts "Player #{player.player_number} cards in hand:#{player.hand.display_cards_in_hand}"
    end
  end

  # Show scores and calculate winner
  def get_winner
    scores = []
    @players.each do |player|
      puts "Player #{player.player_number} score: #{player.hand.get_hand_value}"
      scores << [player.player_number, player.hand.get_hand_value]
    end
    score_board = scores.sort {|a,b| a[1] <=> b[1]}.reverse!
    puts "The winner is player #{score_board[0][0]}. Score: #{score_board[0][1]}"
    end
  end

end
# run game: ruby poker_game.rb
game = PokerGame.new
game.play
