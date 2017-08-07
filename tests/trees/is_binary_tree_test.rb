require 'minitest/autorun'
require_relative '../../trees/is_binary_tree.rb'
require_relative '../../trees/binary_search_tree.rb'

class TestIsBinaryTree < MiniTest::Unit::TestCase

  def setup
    @t1 = BinarySearchTree.new
  end

  def test_empty_tree
    assert(is_binary_tree(@t1.root))
  end

  def test_is_tree
    @t1.put(4)
    @t1.put(3)
    @t1.put(5)
    @t1.put(1)
    @t1.put(6)
    assert(is_binary_tree(@t1.root))
  end

  def test_is_not_tree
    n1 = TreeNode.new(1)
    n2 = TreeNode.new(2)
    n3 = TreeNode.new(3)

    root = n3
    root.right = n1
    root.left = n2
    assert_equal(false, is_binary_tree(root))
  end

  def test_unbalanced_tree
    @t1.put(1)
    @t1.put(2)
    @t1.put(3)
    @t1.put(4)
    @t1.put(5)
    assert(is_binary_tree(@t1.root))
  end
end
