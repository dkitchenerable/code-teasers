require 'minitest/autorun'
require_relative '../../lists/delete_node.rb'
require_relative '../../helpers/node.rb'

class TestDeleteNode < MiniTest::Unit::TestCase
  def setup
    @list = LinkedList.new
    @list.push_front(Node.new(1))
    @list.push_front(Node.new(2))
    @list.push_front(Node.new(3))
  end

  def test_empty_list
    assert_nil(delete_node(nil, 1))
  end

  def test_no_match
    new_head = delete_node(@list.head, 4)
    assert_list_correctness(new_head)
  end

  def test_match_middle
    new_head = delete_node(@list.head, 2)
    assert_equal(3, new_head.key)
    assert_equal(1, new_head.next.key)
  end

  def test_match_start
    @list.push_front(Node.new(4))
    new_head = delete_node(@list.head, 4)
    assert_list_correctness(new_head)
  end

  def test_match_end
    @list.push_back(Node.new(4))
    new_head = delete_node(@list.head, 4)
    assert_list_correctness(new_head)
  end

  private 

  def assert_list_correctness(new_head)
    assert_equal(3, new_head.key)
    assert_equal(2, new_head.next.key)
    assert_equal(1, new_head.next.next.key)
    assert_nil(new_head.next.next.next)
  end
end
