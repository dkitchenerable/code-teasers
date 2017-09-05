require 'minitest/autorun'
require_relative '../../trees/nth_smallest.rb'
require_relative '../../trees/binary_search_tree.rb'

class TestNthHighest < MiniTest::Unit::TestCase

  def setup
    @t1 = BinarySearchTree.new
  end

  def test_one_node
    @t1.put(3)
    assert_equal(3, nth_smallest(@t1.root, 1))
  end

  def test_accuracy
    @t1.put(2)
    @t1.put(1)
    @t1.put(3)
    assert_equal(1, nth_smallest(@t1.root, 1))
    assert_equal(2, nth_smallest(@t1.root, 2))
    assert_equal(3, nth_smallest(@t1.root, 3))
  end

  def test_n_greater_than_tree
    @t1.put(2)
    assert_nil(nth_smallest(@t1.root, 2))
  end
end
