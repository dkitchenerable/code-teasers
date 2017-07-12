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
  end

  def test_match_at_left_end
  end

  def test_match_at_right_end
  end
end
