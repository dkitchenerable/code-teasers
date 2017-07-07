require 'minitest/autorun'
require_relative '../../arrays/search_rotated_array.rb'

class TestSearchRotatedArray < MiniTest::Unit::TestCase
  def setup
    @array = [1,2,3,4,5]
    @one_r = [5,1,2,3,4]
  end

  def test_empty
    assert_equal(false, search_rotated([], 1))
  end

  def test_no_match
    assert_equal(false, search_rotated(@array, 6))
  end

  def test_middle
    assert_equal(false, search_rotated(@array, 6))
  end  

  def test_zero_rotations_match
    assert(search_rotated(@array, 5))
  end

  def test_rotations_match_sorted_side
    assert(search_rotated(@one_r, 3))
  end

  def test_rotations_match_unsorted_side
    assert(search_rotated(@one_r, 1))
  end

  def test_rotations_match_sorted_side_end
    assert(search_rotated(@one_r, 4))
  end

  def test_rotations_match_unsorted_side_end
    assert(search_rotated(@one_r, 5))
  end

end
