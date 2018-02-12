require 'minitest/autorun'
require_relative '../models/game.rb'

class TestGame < Minitest::Test

  def setup
    @game = Game.new("scissors","rock")
  end

  def test_play1
    @game = Game.new("scissors","rock")
    assert_equal( "rock wins", @game.play() )
  end

  def test_play2
    @game = Game.new("rock","scissors")
    assert_equal( "rock wins", @game.play() )
  end

  def test_play3
    @game = Game.new("paper","rock")
    assert_equal( "paper wins", @game.play() )
  end

  def test_play4
    @game = Game.new("rock","paper")
    assert_equal( "paper wins", @game.play() )
  end

  def test_play5
    @game = Game.new("scissors","paper")
    assert_equal( "scissors wins", @game.play() )
  end

  def test_play6
    @game = Game.new("paper","scissors")
    assert_equal( "scissors wins", @game.play() )
  end

  def test_play7
    @game = Game.new("paper","paper")
    assert_equal( "try again", @game.play() )
  end

  def test_play7
    @game = Game.new("rock","rock")
    assert_equal( "try again", @game.play() )
  end

  def test_play8
    @game = Game.new("scissors","scissors")
    assert_equal( "try again", @game.play() )
  end


end
