require 'deck'
require 'card'

describe Deck do

  subject(:deck) {described_class.create_deck}
  let(:deck_2) {described_class.create_deck}
  let(:card) {Card.new("A", "hearts")}

  it 'has a full deck of cards' do
    expect(deck.count).to eq 52
  end

  describe '#shuffle!' do
    it 'should shuffle the deck of cards' do
      deck.shuffle!
      expect(deck).not_to eq deck_2
    end
  end

  describe '#deal_card' do
    before do
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
