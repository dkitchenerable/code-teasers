require 'minitest/autorun'
require_relative '../../trees/identical_trees.rb'
require_relative '../../trees/binary_search_tree.rb'

class TestIdenticalTrees < MiniTest::Unit::TestCase

  def setup
    @t1 = BinarySearchTree.new
    @t2 = BinarySearchTree.new
  end

  def test_empty_trees
    assert(identical_trees(nil, nil))
  end

  def test_one_empty
    @t1.put(1,1)
    assert_equal(false, identical_trees(@t1.root, @t2.root))
  end

  def test_not_identical
    @t1.put(2,1)
    @t2.put(2,1)
    @t1.put(1,1)
    @t2.put(1,1)
    @t1.put(3,1)
    @t2.put(4,1)
    assert_equal(false, identical_trees(@t1.root, @t2.root))
  end

  def test_same_keys_uneven
    @t1.put(1,1)
    @t1.put(2,1)
    @t1.put(3,1)
    @t2.put(3,1)
    @t2.put(2,1)
    @t2.put(1,1)
    assert_equal(false, identical_trees(@t1.root, @t2.root))      
  end
  
  def test_identical
    @t1.put(2,1)
    @t1.put(3,1)
    @t1.put(1,1)
    @t2.put(2,1)
    @t2.put(3,1)
    @t2.put(1,1)
    assert(identical_trees(@t1.root, @t2.root))
  end
end
