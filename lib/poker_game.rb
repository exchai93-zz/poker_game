require_relative 'player'
require_relative 'deck'
require_relative 'dealer'

class PokerGame

  attr_reader :players, :current_player, :deck

  def initialize(players = [Player.new], dealer = Dealer.new)
    @players = players
    @dealer = dealer
    @deck = Deck.create_deck
  end

  def deal_cards
    number_players = 0
    cards_per_player = 0
    until number_players >= 2 && number_players <= 5
      puts "How many players are there? Choose between 2,3,4 and 5."
      number_players = gets.chomp.to_i
    end

    max_cards_in_hand = 52 / number_players
    until cards_per_player >= 1 and cards_per_player <= max_cards_in_hand
      puts "How many cards per player? (Choose up to #{max_cards_in_hand} cards)"
      cards_per_player = gets.chomp.to_i
    end
    puts "Ok let's play.\nDealing #{cards_per_player} cards to #{number_players} players."

    deck = @deck.shuffle!
    hands = []
    (0...number_players).each do |i|
      @hands[i] = deck.shift(cards_per_player)
    end
  end

end

game = PokerGame.new
game.deal_cards
