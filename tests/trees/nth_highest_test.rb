require 'minitest/autorun'
require_relative '../../trees/nth_highest.rb'
require_relative '../../trees/binary_search_tree.rb'

class TestNthHighest < MiniTest::Unit::TestCase

  def setup
    @t1 = BinarySearchTree.new
  end

  def test_one_node
    @t1.put(3)
    assert_equal(3, nth_highest(@t1, 1).key)
  end

  def test_accuracy
    @t1.put(2)
    @t1.put(1)
    @t1.put(3)
    assert_equal(3, nth_highest(@t1, 1).key)
    assert_equal(2, nth_highest(@t1, 2).key)
    assert_equal(1, nth_highest(@t1, 3).key)
  end

  def test_n_greater_than_tree
    @t1.put(2)
    assert_nil(nth_highest(@t1, 2))
  end
end

