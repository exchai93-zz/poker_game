require 'deck'

describe Deck do

  subject(:deck) {described_class.new}
  let(:deck_2) {described_class.new}

  it 'initializes with an empty array' do
    expect(deck.full_deck).to eq []
  end

  describe '#create_deck' do
    it 'should have 52 cards in a full deck' do
      expect(deck.deck_count).to eq 52
    end
  end

  describe '#shuffle!' do
    it 'should shuffle the deck of cards' do
      deck.shuffle!
      expect(deck).not_to eq deck_2
    end
  end
  
end
