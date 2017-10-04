require('minitest/autorun')
require('minitest/rg')
require_relative('../snakes.rb')

class TestSnakes < Minitest::Test

  def setup
    @snake1 = Snakes.new(30, 25)
    @snake2 = Snakes.new(45, 30)
  end


  def test_starting_point
    assert_equal(30, @snake1.starting_point)
  end

  def test_ending_point
    assert_equal(30, @snake2.ending_point)
  end

end
