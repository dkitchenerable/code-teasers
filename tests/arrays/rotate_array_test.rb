require 'minitest/autorun'
require_relative '../../arrays/rotate_array.rb'

class TestRotateArray < MiniTest::Unit::TestCase
  def setup
    @array = [1,2,3,4,5]
  end

  def test_empty
    assert_equal([], rotate_array([], 1))
  end

  def test_zero_rotations
    assert_equal([1,2,3,4,5], rotate_array(@array, 0))
  end

  def test_rotations_less_than_array_size
    assert_equal([3,4,5,1,2], rotate_array(@array, 3))
  end

  def test_rotations_equal_to_array_size
    assert_equal([1,2,3,4,5], rotate_array(@array, 5))
  end

  def test_rotations_greater_than_array_size
    assert_equal([3,4,5,1,2], rotate_array(@array, 8))
  end
end
