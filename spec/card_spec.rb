require 'card'

describe Card do

  let(:card) {described_class.new("A")}
  # subject(:card) {described_class.new(value)}

  it 'initializes card with a value' do
    expect(card.value).to eq "A"
  end

end
