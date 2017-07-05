require 'minitest/autorun'
require_relative '../../arrays/search_rotated_array.rb'

class TestSearchRotatedArray < MiniTest::Unit::TestCase
  def setup
    @array = [1,2,3,4,5]
  end

  def test_empty
    assert_equal(false, search_rotated([], 1))
  end

  def test_no_match
    assert_equal(false, search_rotated(@array, 6))
  end

  def test_zero_rotations_match
    assert_equal(false, search_rotated(@array, 5))
  end

  def test_rotations_match
  end

end
