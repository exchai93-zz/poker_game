require 'card'

describe Card do

  subject(:card) {described_class.new("A", "\u2663")}

  describe '#initialize' do
    it 'initializes card with a value' do
      expect(card.value).to eq "A"
    end
    it 'initializes card with a suit' do
      expect(card.suit).to eq "\u2663"
    end
  end

  describe '#to_s' do
    it 'converts the card value and suit into a single string' do
      expect(card.to_s).to eq "A, \u2663"
    end
  end

end
