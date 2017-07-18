class Card

  # hash of card values
  CARD_VALUES = {
    deuce: "2",
    three: "3",
    four: "4",
    five: "5",
    six: "6",
    seven: "7",
    eight: "8",
    nine: "9",
    ten: "10",
    jack: "J",
    queen: "Q",
    king: "K",
    ace: "A"
  }

  # hash of rank of each card
  POKER_RANK = {
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

  # method to read attributes
  attr_reader :value

  # card class is initialized with a value parameter and attribute
  def initialize(value)
    @value = value
  end

  private

  attr_writer :value

end
