require('minitest/autorun')
require('minitest/rg')
require_relative('../player_tokens.rb')

class TestPlayerTokens < Minitest::Test

  def setup
    @player1 = PlayerTokens.new("Aline")
  end


  def test_name
    assert_equal("Aline", @player1.name)
  end

  def test_position
    assert_equal(0, @player1.position)
  end

end
