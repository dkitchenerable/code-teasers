require 'minitest/autorun'
require_relative '../../lists/merge_sorted_lists.rb'
require_relative '../../helpers/node.rb'

class TestMergeSortedLists < MiniTest::Unit::TestCase
  def setup
    @l1 = LinkedList.new
    @l1.push_front(Node.new(3))
    @l1.push_front(Node.new(1))
    @l2 = LinkedList.new
    @l2.push_front(Node.new(4))
    @l2.push_front(Node.new(2))
  end

  # with tail case
  def test_empty_lists
    assert_nil(merge_sorted_lists(nil, nil))
  end

  def test_one_list_empty
    new_head = merge_sorted_lists(nil, @l2.head)
    assert_equal(Node.all_keys(@l2.head), Node.all_keys(new_head))
  end

  def test_sort_different_digits
    new_head = merge_sorted_lists(@l1.head, @l2.head)
    assert_equal([1,2,3,4], Node.all_keys(new_head))
  end

  def test_duplicates
    @l2.push_front(Node.new(2))
    new_head = merge_sorted_lists(@l1.head, @l2.head)
    assert_equal([1,2,2,3,4], Node.all_keys(new_head))
  end
end
