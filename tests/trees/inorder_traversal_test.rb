require 'minitest/autorun'
require_relative '../../trees/inorder_traversal.rb'
require_relative '../../trees/binary_search_tree.rb'

class TestInorderSuccessor < MiniTest::Unit::TestCase

  def setup
    @t1 = BinarySearchTree.new
  end

  def test_empty_tree
    assert_equal([], inorder_traversal(@t1))
  end

  def test_one_node
    @t1.put(1, 1)
    assert_equal([1], inorder_traversal(@t1))
  end

  def test_multiple_nodes
    @t1.put(2, 1)
    @t1.put(1, 1)
    @t1.put(3, 1)
    @t1.put(4, 1)
    @t1.put(5, 1)
    assert_equal([1,2,3,4,5], inorder_traversal(@t1))
  end
end
