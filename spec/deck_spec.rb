require 'deck'

describe Deck do

  subject(:deck) {described_class.new}
  let(:deck_2) {described_class.new}


  it 'initializes with an empty array' do
    expect(deck.full_deck).to eq []
  end

end
