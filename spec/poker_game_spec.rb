require 'poker_game'
require 'pry'

describe PokerGame do

  subject(:game) { described_class.new }

  describe '#initialize' do
    it 'has an empty array of players' do
      expect(game.players).to be_empty
    end
    it 'has a deck object' do
      expect(game.deck.class).to eq Deck
    end
    it 'has a dealer object' do
      expect(game.dealer.class).to eq Dealer
    end
  end

end
