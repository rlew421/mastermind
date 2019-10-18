require 'minitest/autorun'
require 'minitest/pride'
require './lib/code'

class CodeTest < Minitest::Test

  def setup
    @random_code = Code.new
  end

  def test_it_exists
    assert_instance_of Code, @random_code
  end

  def test_it_can_be_generated_randomly
    assert_equal 4, @random_code.code.length
  end

  def test_it_is_four_characters
    assert_equal 4, @random_code.code.length
  end
end
