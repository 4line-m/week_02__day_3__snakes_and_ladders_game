require('minitest/autorun')
require('minitest/rg')
require_relative('../board.rb')
require_relative('../dice.rb')
require_relative('../snakesandladders.rb')
require_relative('../player_tokens.rb')

class TestBoard < Minitest::Test

  def setup
    @ladder1 = SnakesAndLadders.new(25, 45)
    @ladder2 = SnakesAndLadders.new(30, 73)
    @snake1 = SnakesAndLadders.new(60, 4)
    @snake2 = SnakesAndLadders.new(47, 32)
    @player1 = PlayerTokens.new("Aline")
    @player2 = PlayerTokens.new("Andre")
    @dice1 = Dice.new(6)
    @board = Board.new([@player1, @player2], [@ladder1, @ladder2, @snake1, @snake2], @dice1)
  end

  def test_add_snakes_or_ladders()
    @board.add_snakes_or_ladders(@snake1)
    result = @board.position_array[60]
    assert_equal(@snake1, result)
  end

  def test_move_player_token()
    @board.move_player_token("Aline")
    assert_equal(2, @player1.position)
  end

end
