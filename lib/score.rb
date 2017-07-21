class Score

  attr_reader :face_value, :deck

  def initialize(deck = Deck.create_deck)
    @face_value = {
      deuce: 2,
      three: 3,
      four: 4,
      five: 5,
      six: 6,
      seven: 7,
      eight: 8,
      nine: 9,
      ten: 10,
      jack: 11,
      queen: 12,
      king: 13,
      ace: 1
    }
    @deck = deck
  end

  



end
