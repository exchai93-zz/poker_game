require 'player'
require 'hand'

describe Player do

  let(:hand) {Hand.new}
  subject(:player) {described_class.new}

  describe '#initialize' do
    it 'has a player number of 0' do
      expect(player.player_number).to eq 0
    end
    it 'has an empty hand of cards' do
      expect(player.hand).to eq hand
    end
    it 'has a score of 0' do
      expect(player.score).to eq 0
    end
  end

  describe '#get_player_number' do
    it 'gets a user input between 2 - 5' do
      expect(player.get_player_number).to eq 3
    end
  end

end
