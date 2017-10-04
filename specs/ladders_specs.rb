require('minitest/autorun')
require('minitest/rg')
require_relative('../ladders.rb')

class TestLadders < Minitest::Test

  def setup
    @ladder1 = Ladders.new(25, 45)
    @ladder2 = Ladders.new(30, 73)
  end


  def test_starting_point
    assert_equal(25, @ladder1.starting_point)
  end

  def test_ending_point
    assert_equal(73, @ladder2.ending_point)
  end

end
