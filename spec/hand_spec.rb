require 'hand'
require 'pry'

describe Hand do

  subject(:hand) { described_class.new }
  let(:card) { Card.new }

  describe '#initialize' do
    it 'has an empty array of cards' do
      expect(hand.cards).to eq []
    end
  end

  describe '#draw' do
    it 'increases the array by one' do
      expect{ hand.draw(card) }.to change { hand.cards.count }.by 1
    end
  end

  describe '#get_hand_value' do
    it 'sums the face values of full hand' do
      hand.cards = [["5", :C], ["4", :D], ["5", :H], ["Q", :C], ["4", :C]]
      expect(hand.get_hand_value).to eq 21
    end
  end

  describe '#display_cards_in_hand' do
    it 'return a single array of string of cards' do
      hand.cards = [["5", :C], ["4", :D], ["5", :H], ["Q", :C], ["4", :C]]
      expect(hand.display_cards_in_hand).to eq "5C, 4D, 5H, QC, 4C"
    end
  end

end
