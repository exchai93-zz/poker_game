require 'card'

describe Card do

  subject(:card) {described_class.new("A", :S)}

  describe '#initialize' do
    it 'initializes card with a value' do
      expect(card.value).to eq "A"
    end
    it 'initializes card with a suit' do
      expect(card.suit).to eq ":S"
    end
  end

  describe '#to_s' do
    it 'converts the card value and suit into a single string' do
      expect(card.to_s).to eq "A \u2660"
    end
  end

end
