require 'minitest/autorun'
require 'minitest/pride'
require './lib/code'
require './lib/guess'

class GuessTest < Minitest::Test

  def setup
    @guess = Guess.new(["R, B, B, Y"])
  end

  def test_it_exists
    assert_instance_of Guess, @guess
  end

  def test_it_only_accepts_RGBY
    assert_equal true, @guess.valid_letters?(["R, B, B, Y"])
  end

  def test_it_is_four_characters
    skip
    assert_equal 4, @guess.valid_length?
  end

  def test_it_matches_computer_code
    skip
    computer_code = ["R, G, B, Y"]
    assert true, @guess.correct?

    computer_code_2 = ["R, R, G, B"]
    assert false, @guess.correct?
  end
end
