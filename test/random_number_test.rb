require 'minitest/autorun'
require 'minitest/pride'
require './lib/random_number'
require 'pry'

class RandomNumberTest < Minitest::Test
  def test_it_exists
    number = RandomNumber.new
    assert_instance_of RandomNumber, number
  end

  def test_it_has_a_random_number
    number = RandomNumber.new
    assert_instance_of Integer, number.random_number
  end

  def test_it_is_between_1_and_100
    number = RandomNumber.new
    assert number.random_number.between?(1,100)
  end
end
  # or assert game.answer < 100
  # or assert game.answer > 0
  #  or assert (0..100)
