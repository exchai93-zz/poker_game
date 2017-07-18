require 'card'

describe Card do

  subject(:card) {described_class.new("A")}

  it 'initializes card with a value' do
    expect(card.value).to eq "A"
  end

end
