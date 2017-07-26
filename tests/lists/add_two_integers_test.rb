require 'minitest/autorun'
require_relative '../../lists/add_two_integers.rb'
require_relative '../../helpers/node.rb'

class TestDeleteNode < MiniTest::Unit::TestCase
  def setup
    @l1 = LinkedList.new
    @l1.push_front(Node.new(3))
    @l1.push_front(Node.new(2))
    @l1.push_front(Node.new(1))
    @l2 = LinkedList.new
    @l2.push_front(Node.new(8))
    @l2.push_front(Node.new(2))
    @l2.push_front(Node.new(1))
  end

  def test_lists_empty
    assert_nil(add_two_integers(nil, nil))
  end

  def test_one_empty_list
    sum_head = add_two_integers(@l1.head, nil)
    assert_equal([1,2,3], Node.all_keys(sum_head))
  end

  def test_lists_equal_length
    sum_head = add_two_integers(@l1.head, @l2.head)
    assert_equal([2,4,1,1], Node.all_keys(sum_head))
  end

  def test_lists_unequal_length
    @l2.push_front(Node.new(1))
    sum_head = add_two_integers(@l1.head, @l2.head)
    assert_equal([2,3,5,8], Node.all_keys(sum_head))
  end

end
