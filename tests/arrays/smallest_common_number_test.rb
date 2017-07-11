require 'minitest/autorun'
require_relative '../../arrays/smallest_common_number.rb'

class TestSmallestCommonNumberTest < MiniTest::Unit::TestCase
  def setup
    @a1 = [1,2,3,4,5]
    @a2 = [0,1,2,3]
    @a3 = [0,0,1]
  end

  def test_empty_arrays
    assert_nil(find_smallest_common_number([],[],[]))
  end

  def test_partial_empty_arrays
    assert_nil(find_smallest_common_number([],[1],[1]))
  end

  def test_no_match
    assert_nil(find_smallest_common_number([0,1,2,3],[4,5,6],[7,8,9]))
  end

  def test_partial_match
    assert_nil(find_smallest_common_number([0,1,2,3],[1,4,5,6],[7,8,9]))
  end

  def test_match
    assert_equal(1, find_smallest_common_number(@a1, @a2, @a3))
  end  

  def test_match_first
    assert_equal(1, find_smallest_common_number([1,2], [1,5,6,7], [1,4,100]))
  end  

  def test_match_last
    assert_equal(1, find_smallest_common_number([-5,1], [-1,-1,1], [0,0,-1,-1,1]))
  end
end
