require 'minitest/autorun'
require_relative '../../arrays/move_zeros_left.rb'

class TestMoveZerosToLeft < MiniTest::Unit::TestCase
  def setup
    @array = [1,2,0,0,3,4]
    @expected_array = [0,0,1,2,3,4]
  end

  def test_empty
    assert_equal([], move_zeros_to_left([]))
  end

  def test_no_zeros
    assert_equal([1,2,3], move_zeros_to_left([1,2,3]))
  end

  def test_zeros
    assert_equal(@expected_array, move_zeros_to_left(@array))
  end

  def test_zeros_at_right_end
    assert_equal(@expected_array, move_zeros_to_left([1,2,3,4,0,0]))
  end

  def test_zeros_at_left_end
    assert_equal(@expected_array, move_zeros_to_left([0,0,1,2,3,4]))
  end
end
