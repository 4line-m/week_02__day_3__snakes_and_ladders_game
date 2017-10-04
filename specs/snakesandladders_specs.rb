require('minitest/autorun')
require('minitest/rg')
require_relative('../snakesandladders.rb')

class TestSnakesAndLadders < Minitest::Test

  def setup
    @ladder1 = SnakesAndLadders.new(25, 45)
    @ladder2 = SnakesAndLadders.new(30, 73)
    @snake1 = SnakesAndLadders.new(30, 25)
    @snake2 = SnakesAndLadders.new(45, 30)
  end


  def test_ladder_starting_point
    assert_equal(25, @ladder1.starting_point)
  end

  def test_ladder_ending_point
    assert_equal(73, @ladder2.ending_point)
  end

  def test_snake_starting_point
    assert_equal(30, @snake1.starting_point)
  end

  def test_snake_ending_point
    assert_equal(30, @snake2.ending_point)
  end

end
