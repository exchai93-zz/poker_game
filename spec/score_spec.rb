require 'score'

describe Score do

  subject(:score) {described_class.new}

  it 'initializes with hash of card face values' do
    expect(score.face_value).to include(1 => "A")
  end
  
end
