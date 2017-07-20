require 'dealer'
require 'deck'

describe Dealer do

  let(:current_deck) {Deck.create_deck}
  let(:deck) {Deck.create_deck}
  subject(:dealer) {described_class.new}

  xdescribe '#initialize' do
    it 'has a full deck' do
      expect(dealer.current_deck).to eq deck
    end
  end

end
