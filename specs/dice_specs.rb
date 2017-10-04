require('minitest/autorun')
require('minitest/rg')
require_relative('../dice.rb')

class TestDice < Minitest::Test

  def setup
    @dice1 = Dice.new(6)

  end

  def test_random_score()
    @dice1.random_score()
    assert_equal(2, @dice1.current_score)
  end


end
