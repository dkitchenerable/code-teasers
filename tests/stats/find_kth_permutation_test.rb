require 'minitest/autorun'
require_relative '../../stats/find_kth_permutation.rb'

class TestFindKthPerm < MiniTest::Unit::TestCase

  def test_empty_array
    assert_equal("", find_kth_permutation([], 4))
  end

  def test_kth_0
    assert_equal("", find_kth_permutation([1,2,3,4], 0))
  end

  def test_single_element
    assert_equal("4", find_kth_permutation([4], 8))
  end

  def test_multiple_elements
    assert_equal("2143", find_kth_permutation([1,2,3,4], 8))
  end
end
