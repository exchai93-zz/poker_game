require 'player'

describe Player do

  subject(:player) {described_class.new}

  it 'initializes with a number of players' do
    expect(player.input_number).to eq input_number
  end
  
end
