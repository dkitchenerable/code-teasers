require 'minitest/autorun'
require_relative '../../trees/serialize_deserialize.rb'
require_relative '../../trees/binary_search_tree.rb'

class TestSerializeDeserialize < MiniTest::Unit::TestCase

  def setup
    @t1 = BinarySearchTree.new
  end

  def test_empty_tree
    assert_equal([nil], serialize(@t1.root))
    assert_nil(deserialize(serialize(@t1.root)))
  end

  def test_one_node
    @t1.put(100)
    assert_equal([100,nil,nil], serialize(@t1.root))
    assert_equal(100, deserialize(serialize(@t1.root)).key)
  end

  def test_multiple_nodes
    @t1.put(100)
    @t1.put(50)
    @t1.put(25)
    @t1.put(75)
    @t1.put(200)
    @t1.put(350)
    assert_equal([100,50,25,nil,nil,75,nil,nil,200,nil,350,nil,nil], serialize(@t1.root))
    root = deserialize(serialize(@t1.root))
    assert_equal(100, root.key)
    assert_equal(200, root.right.key)
    assert_equal(350, root.right.right.key)
    assert_equal(50, root.left.key)
    assert_equal(25, root.left.left.key)
    assert_equal(75, root.left.right.key)
  end
end
