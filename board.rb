class Board

  attr_accessor :players :ladders :snakes

  def initialize(players, ladders, snakes)
    @players = players
    @ladders = ladders
    @snakes = snakes
  end

end
