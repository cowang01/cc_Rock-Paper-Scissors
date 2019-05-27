require('minitest/autorun')
require('minitest/rg')
require_relative('../models/rps.rb')

class TestCustomer < MiniTest::Test
  def setup
    @rps_1 = Rps.new("Rock", "Scissors")
    @rps_2 = Rps.new("Scissors", "Paper")
  end


  def test_rock_beats_scissors()
    assert_equal("Rock", @rps_1.battle())
  end

  def test_scissors_beat_paper()
    assert_equal("Scissors", @rps_2.battle())
  end

end
