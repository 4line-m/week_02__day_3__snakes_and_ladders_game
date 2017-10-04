require('minitest/autorun')
require('minitest/rg')
require_relative('../ladders.rb')

class Board < Minitest::Test

  def setup
    @ladder1 = Ladders.new(25, 45)
    @ladder2 = Ladders.new(30, 73)
    @snake1 = Snakes.new(60, 4)
    @snake2 = Snakes.new(47, 32)
    @player1 = Player.new("Aline")
    @player2 = Player.new("Andre")
    @dice = Dice.new(6)
    @board = Board.new([@player1, @player2], [@ladder1, @ladder2], [@snake1, @snake2])
  end



end
