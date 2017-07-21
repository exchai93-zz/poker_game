require 'score'

describe Score do

  subject(:score) {described_class.new}

  it 'initializes with hash of face values' do
    expect(score.face_value).to include(:ace => 1)
  end

end
