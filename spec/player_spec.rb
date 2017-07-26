require 'player'
require 'hand'

describe Player do

  let(:hand) { double(Hand.new) }
  subject(:player) { described_class.new }

  describe '#initialize' do
    it 'has a player number set to 0' do
      expect(player.player_number).to eq 0
    end
    it 'has an empty hand of cards' do
      expect(player.hand.cards).to be_empty
    end
    it 'has a score set to 0' do
      expect(player.score).to eq 0
    end
  end

end
