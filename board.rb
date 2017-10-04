class Board

  attr_accessor :players, :ladders, :snakes, :dice, :position_array

  def initialize(players, ladders, snakes, dice)
    @players = players
    @ladders = ladders
    @snakes = snakes
    @dice = dice
    @position_array = Array.new(100) {|i| nil}
  end

  def add_snakes_or_ladders(snake_or_ladder)
    @position_array[snake_or_ladder.starting_point] = snake_or_ladder
  end


end
