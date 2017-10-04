require('minitest/autorun')
require('minitest/rg')
require_relative('../board.rb')
require_relative('../dice.rb')
require_relative('../snakesandladders.rb')
require_relative('../player_tokens.rb')

class TestBoard < Minitest::Test

  def setup
    @ladder1 = Ladders.new(25, 45)
    @ladder2 = Ladders.new(30, 73)
    @snake1 = Snakes.new(60, 4)
    @snake2 = Snakes.new(47, 32)
    @player1 = PlayerTokens.new("Aline")
    @player2 = PlayerTokens.new("Andre")
    @dice1 = Dice.new(6)
    @board = Board.new([@player1, @player2], [@ladder1, @ladder2], [@snake1, @snake2], @dice1)
  end

  def test_add_snakes_or_ladders()
    @board.add_snakes_or_ladders(@snake1)
    result = @board.position_array[60]
    assert_equal(@snake1, result)
  end

end
