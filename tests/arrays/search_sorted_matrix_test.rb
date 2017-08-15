require 'minitest/autorun'
require_relative '../../arrays/search_sorted_matrix.rb'

class TestSearchSortedMatrix < MiniTest::Unit::TestCase
  def setup
    @matrix = [[1,4,],[2,5]]
  end

  def test_empty_matrix
    assert_nil(search_sorted_matrix([], 6))
  end

  def test_single_matrix
    assert_equal([0,0], search_sorted_matrix([[6]], 6))
  end

  def test_no_match
    assert_nil(search_sorted_matrix(@matrix, 6))
  end

  def test_match_first
    assert_equal([0,0], search_sorted_matrix(@matrix, 1))
  end

  def test_match_last
    assert_equal([1,1], search_sorted_matrix(@matrix, 5))
  end
end
