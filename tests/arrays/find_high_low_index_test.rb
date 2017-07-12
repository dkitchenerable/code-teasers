require 'minitest/autorun'
require_relative '../../arrays/find_high_low_index.rb'

class TestFindHighLowIndex < MiniTest::Unit::TestCase
  def setup
    @array = [1,2,3,3,3,4,5]
    @no_match = [nil, nil]
  end

  def test_empty
    assert_equal(@no_match, find_high_low_index([], 1))
  end

  def test_no_match
    assert_equal(@no_match, find_high_low_index(@array, 6))
  end

  def test_match
    assert_equal([2,4], find_high_low_index(@array, 3))
  end

  def test_match_at_left_end
    assert_equal([0,0], find_high_low_index(@array, 1))
  end

  def test_match_at_right_end
    assert_equal([6,6], find_high_low_index(@array, 5))
  end
end
