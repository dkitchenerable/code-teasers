require 'minitest/autorun'
require_relative '../../lists/swap_nth_node.rb'
require_relative '../../helpers/node.rb'

class TestSwapNthNode < MiniTest::Unit::TestCase
  def setup
    @l = LinkedList.new
    @l.push_front(Node.new(3))
    @l.push_front(Node.new(2))
    @l.push_front(Node.new(1))
  end

  def test_nth_longer_than_list
    assert_nil(swap_node(@l.head, 4))
  end

  def test_middle
    assert_equal(2, swap_node(@l.head, 2).key)
  end

  def test_end
    assert_equal(3, swap_node(@l.head, 3).key)
  end

  def test_front
    assert_equal(1, swap_node(@l.head, 1).key)
  end  
end
