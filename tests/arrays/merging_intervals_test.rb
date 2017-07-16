require 'minitest/autorun'
require_relative '../../arrays/merging_intervals.rb'

class TestMergingIntervals < MiniTest::Unit::TestCase
  def test_empty
    assert_equal([], merging_intervals([]))
  end

  def test_one_pair
    assert_equal([[1,2]], merging_intervals([[1,2]]))
  end

  def test_no_overlaps
    assert_equal([[1,2],[3,4]], merging_intervals([[1,2],[3,4]]))
  end

  def test_mixed_overlaps
    test_array = [[1,2],[2,6],[7,9],[8,10]]
    assert_equal([[1,6],[7,10]], merging_intervals(test_array))
  end

  def test_all_overlaps
    test_array = [[1,2],[2,6],[5,9],[8,10]]
    assert_equal([[1,10]], merging_intervals(test_array))
  end
end
