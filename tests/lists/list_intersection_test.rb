require 'minitest/autorun'
require_relative '../../lists/list_intersection.rb'
require_relative '../../helpers/node.rb'

class TestListintersection < MiniTest::Unit::TestCase
  def setup
    @l1 = LinkedList.new
    @l2 = LinkedList.new
    @l1.push_front(Node.new(1))
    @l1.push_front(Node.new(2))
    @l1.push_front(Node.new(3))
    @l2.push_front(Node.new(4))
    @l2.push_front(Node.new(5))
    @l2.push_front(Node.new(6))
  end

  def test_empty_list
    assert_nil(list_intersection(nil, nil))
  end

  def test_no_intersect
    assert_nil(list_intersection(@l1.head, @l2.head))
  end

  def test_intersect_same_size
    @l1.push_back(Node.new(7))
    @l2.push_back(Node.new(7))
    assert_equal(7, list_intersection(@l1.head, @l2.head))
  end

  def test_intersect_different_size
    @l1.push_back(Node.new(7))
    @l2.push_back(Node.new(7))
    @l2.push_front(Node.new(8))
    assert_equal(7, list_intersection(@l1.head, @l2.head))
  end
end
