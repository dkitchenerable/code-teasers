require 'minitest/autorun'
require_relative '../../lists/reverse_list.rb'
require_relative '../../helpers/node.rb'

class TestReverseList < MiniTest::Unit::TestCase
  # with tail case
  def test_nil_node
    assert_nil(reverse_list(nil))
  end

  def test_single_item_list
    node = Node.new(1)
    assert_equal(1, reverse_list(node).key)
  end

  def test_multiple_item_list
    list = LinkedList.new
    list.push_front(Node.new(1))
    list.push_front(Node.new(2))
    list.push_front(Node.new(3))
    head = reverse_list(list.head)
    assert_equal(head.key, 1)
    assert_equal(head.next.key, 2)
    assert_equal(head.next.next.key, 3)
    assert_nil(head.next.next.next)
  end

  # recursive implementation
  def test_empty_list_r
    assert_nil(reverse_list(nil, true))
  end

  def test_single_item_list_r
    node = Node.new(1)
    assert_equal(1, reverse_list(node).key, true)      
  end

  def test_multiple_item_list_r
    list = LinkedList.new
    list.push_front(Node.new(1))
    list.push_front(Node.new(2))
    list.push_front(Node.new(3))
    head = reverse_list(list.head, true)
    assert_equal(head.key, 1)
    assert_equal(head.next.key, 2)
    assert_equal(head.next.next.key, 3)
    assert_nil(head.next.next.next)
  end

end
