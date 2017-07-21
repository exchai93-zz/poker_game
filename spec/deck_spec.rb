require 'deck'
require 'card'

describe Deck do

  subject(:deck) {described_class.create_deck}
  let(:deck_1) {described_class.create_deck}
  let(:deck_2) {described_class.create_deck}
  let(:card) { Card.new("Q", "hearts") }

  it 'has a full deck of cards' do
    expect(deck.count).to eq 52
  end

  describe '#shuffle' do
    it 'randomises the deck of cards' do
      deck.shuffle
      expect(deck_1).not_to eq deck_2
    end
  end

  describe '#release_card' do
    before do
      deck.shuffle
    end
    it 'returns one card object' do
      expect(card.class).to eq Card
    end
    it 'decreases the deck count by one' do
      expect{ deck.release_card }.to change{ deck.count }.by -1
    end
  end

end
