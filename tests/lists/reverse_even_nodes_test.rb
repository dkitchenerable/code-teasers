require 'minitest/autorun'
require_relative '../../lists/reverse_even_nodes.rb'
require_relative '../../helpers/node.rb'

class TestReverseEvenNodes < MiniTest::Unit::TestCase
  def setup
    @list = LinkedList.new
    @list.push_front(Node.new(4))
    @list.push_front(Node.new(3))
    @list.push_front(Node.new(2))
    @list.push_front(Node.new(1))
  end

  # with tail case
  def test_nil_list
    assert_nil(reverse_even_nodes(LinkedList.new).head)
  end

  def test_no_even_node
    l = LinkedList.new
    l.push_front(Node.new(1))
    assert_equal(l.head, reverse_even_nodes(l).head)
  end

  def test_equal_number_odd_even
    result = reverse_even_nodes(@list)
    assert_equal([1,4,3,2], result.keys)
  end

  def test_unequal_number_odd_even
    @list.push_front(Node.new(5))
    result = reverse_even_nodes(@list)
    assert_equal([5,3,2,1,4], result.keys)
  end

end
