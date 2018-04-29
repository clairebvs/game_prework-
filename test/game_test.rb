require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'
require 'pry'

class GameTest < Minitest::Test

  def test_it_exists
    game = Game.new
    assert_instance_of Game, game
  end

  def test_it_has_a_hint_method
    game = Game.new(50)
    expected = "A hint for you, the number is divisible by 5"
    assert_equal expected, game.hint
  end

  def test_player_guess_is_correct
    game = Game.new(50)
    user_guess = 50
    expected = "You guessed the right number"
    assert_equal expected, game.play(user_guess)
  end

end
