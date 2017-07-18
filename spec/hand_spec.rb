require 'hand'

describe Hand do

  subject(:hand) {described_class.new}

  it 'initializes with an empty array of cards' do
    expect(hand.cards).to eq []
  end

end
