class Player

  DEFAULT_NUMBERS = ["2", "3", "4", "5"]

  attr_reader :players

  def initialize(input_number)
    @players = input_number
  end

  def get_player_number(input)
    "#{input} players"
  end

  player = Player.new(2)

  puts "How many players are there? (Choose between 2-5)"
  players = gets.chomp.to_i

  puts get_player_number

  private

  attr_writer :players

end
