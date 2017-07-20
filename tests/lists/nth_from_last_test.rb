require 'minitest/autorun'
require_relative '../../lists/nth_from_last.rb'
require_relative '../../helpers/node.rb'

class TestNthFromLast < MiniTest::Unit::TestCase
  def setup
    @l = LinkedList.new
    @l.push_front(Node.new(1))
    @l.push_front(Node.new(2))
    @l.push_front(Node.new(3))
  end

  def test_empty_list
    assert_nil(nth_from_last(nil, 2))
  end

  def test_nth_longer_than_list
    assert_nil(nth_from_last(@l.head, 4))
  end

  def test_middle
    assert_equal(2, nth_from_last(@l.head, 2))
  end

  def test_end
    assert_equal(1, nth_from_last(@l.head, 1))
  end

  def test_front
    assert_equal(3, nth_from_last(@l.head, 3))
  end  
end
