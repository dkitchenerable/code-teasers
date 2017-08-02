require 'minitest/autorun'
require_relative '../../trees/inorder_successor.rb'
require_relative '../../trees/binary_search_tree.rb'

class TestInorderSuccessor < MiniTest::Unit::TestCase

  def setup
    @t1 = BinarySearchTree.new
  end

  def test_empty_tree
    assert_nil(inorder_succesor(@t1.root, 1))
  end

  def test_no_match
    @t1.put(1, 1)
    assert_nil(inorder_succesor(@t1.root, 2))
  end

  def test_one_node
    @t1.put(1, 1)
    assert_nil(inorder_succesor(@t1.root, 1))
  end

  def test_with_no_children
    @t1.put(2, 1)
    @t1.put(1, 1)
    assert_equal(2, inorder_succesor(@t1.root, 1).key)
  end

  def test_with_right_child
    @t1.put(2, 1)
    @t1.put(1, 1)
    @t1.put(3, 1)
    @t1.put(4, 1)
    @t1.put(5, 1)
    assert_equal(4, inorder_succesor(@t1.root, 3).key)
  end
end
