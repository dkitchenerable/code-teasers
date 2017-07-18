require 'minitest/autorun'
require_relative '../../lists/remove_duplicates.rb'
require_relative '../../helpers/node.rb'

class TestRemoveDuplicates < MiniTest::Unit::TestCase
  def setup
    @list = LinkedList.new
    @list.push_front(Node.new(1))
    @list.push_front(Node.new(2))
    @list.push_front(Node.new(3))
  end

  # with tail case
  def test_empty_list
    assert_nil(remove_duplicates(nil))
  end

  def test_no_duplicates
    new_head = remove_duplicates(@list.head)
    assert_list_correctness(new_head)
  end

  def test_duplicates
    @list.push_back(Node.new(2))
    new_head = remove_duplicates(@list.head)
    assert_list_correctness(new_head)
  end

  def test_multiple_duplicates
    @list.push_back(Node.new(2))
    @list.push_back(Node.new(1))
    @list.push_back(Node.new(3))
    new_head = remove_duplicates(@list.head)
    assert_list_correctness(new_head)
  end

  def test_duplicates_beginning
    @list.push_front(Node.new(3))
    @list.push_front(Node.new(3))
    new_head = remove_duplicates(@list.head)
    assert_list_correctness(new_head)
  end

  def test_duplicates_end
    @list.push_back(Node.new(1))
    @list.push_back(Node.new(1))
    new_head = remove_duplicates(@list.head)
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
