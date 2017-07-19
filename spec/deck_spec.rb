require 'deck'
require 'card'

describe Deck do

  subject(:deck) {described_class.new}
  let(:deck_2) {described_class.new}
  let(:card) {Card.new("A", "hearts")}

  it 'initializes with an empty array' do
    expect(deck.full_deck).to eq []
  end

  describe '#create_deck' do
    it 'should have 52 cards in a full deck' do
      deck.create_deck
      expect(deck.deck_count).to eq 52
    end
  end

  describe '#shuffle!' do
    it 'should shuffle the deck of cards' do
      deck.shuffle!
      expect(deck).not_to eq deck_2
    end
  end

  describe '#deal_card' do
    before do
      deck.create_deck
      deck.shuffle!
    end
    it 'should return one random card' do
      expect(deck.deal_card).to eq card
    end
    it 'should decrease the full deck by one' do
      deck.deal_card
      expect(deck.deck_count).to eq 51
    end
  end

end
