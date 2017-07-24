require 'minitest/autorun'
require_relative '../../lists/rotate_list.rb'
require_relative '../../helpers/node.rb'

class TestRotateList < MiniTest::Unit::TestCase
  def setup
    @list = LinkedList.new
    @list.push_front(Node.new(4))
    @list.push_front(Node.new(3))
    @list.push_front(Node.new(2))
    @list.push_front(Node.new(1))
  end

  # with tail case
  def test_nil_list
    assert_nil(rotate_list(nil,2))
  end

  def test_one_node_list
    assert_equal(1, rotate_list(Node.new(1),2).key)
  end

  def test_zero_rotations
    head = rotate_list(@list.head, 0)
    assert_equal(Node.all_keys(head), @list.keys)
  end

  def test_rotation_correctness
    head = rotate_list(@list.head, 2)
    assert_equal([3,4,1,2], Node.all_keys(head))
  end

  def test_num_rotations_greater_than_list_length
    head = rotate_list(@list.head, 6)
    assert_equal([3,4,1,2], Node.all_keys(head))
  end
end
