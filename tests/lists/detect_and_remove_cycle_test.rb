require 'minitest/autorun'
require_relative '../../lists/detect_and_remove_cycle.rb'
require_relative '../../helpers/node.rb'

class TestNthFromLast < MiniTest::Unit::TestCase
  def setup
    @head = Node.new(0)
    n1 = Node.new(1)
    n2 = Node.new(2)
    n3 = Node.new(3)
    n4 = Node.new(4)
    @head.next = n1
    n1.next = n2
    n2.next = n3
    n3.next = n4
    n4.next = n2
  end

  def test_empty_list
    assert_nil(detect_and_remove_cycle(nil))
  end

  def test_single_list
    new_node = Node.new(100)
    assert_equal(new_node.key, detect_and_remove_cycle(new_node).key)
  end

  def test_two_node_list
    head = Node.new(1)
    n2 = Node.new(2)
    head.next = n2
    n2.next = head
    detect_and_remove_cycle(@head)
    assert_equal(1,head.key)
    assert_equal(2,head.next.key)
    assert_nil(head.next.next)
  end
 
  def test_cycle
    detect_and_remove_cycle(@head)
    assert_equal(0,@head.key)
    assert_equal(1, @head.next.key)
    assert_equal(2, @head.next.next.key)
    assert_equal(3, @head.next.next.next.key)
    assert_equal(4, @head.next.next.next.next.key)
    assert_nil(@head.next.next.next.next.next)
  end  

  def test_no_cycle
    @head.next.next.next.next.next  = nil
    detect_and_remove_cycle(@head)
    assert_equal(0,@head.key)
    assert_equal(1, @head.next.key)
    assert_equal(2, @head.next.next.key)
    assert_equal(3, @head.next.next.next.key)
    assert_equal(4, @head.next.next.next.next.key)
    assert_nil(@head.next.next.next.next.next)
  end
end
