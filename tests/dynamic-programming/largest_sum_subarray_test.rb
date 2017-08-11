require 'minitest/autorun'
require_relative '../../dynamic-programming/largest_sum_subarray.rb'

class TestLargestSumSubarray < MiniTest::Unit::TestCase

  def test_empty_array
    assert_nil(largest_sum_subarray([]))
  end

  def test_single_array
    assert_equal(5, largest_sum_subarray([5]))
  end

  def test_all_positive
    assert_equal(15, largest_sum_subarray([1,2,3,4,5]))
  end

  def test_all_negative
    assert_equal(-1, largest_sum_subarray([-1,-2,-3,-4,-5]))
  end  

  def test_mixed_signs
    assert_equal(12, largest_sum_subarray([-4,2,-5,1,2,3,6,-5]))
  end
end
