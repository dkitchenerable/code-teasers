require 'minitest/autorun'
require_relative '../../arrays/max_profit.rb'

class TestMaxProfit < MiniTest::Unit::TestCase
  def setup
    @result = [1,6,5]
  end

  def test_minimum
    assert_equal(@result, max_profit([1,6]))
  end

  def test_left_end
    assert_equal(@result, max_profit([1,6,1,4,3,5]))
  end

  def test_middle
    assert_equal([5,19,14], max_profit([8,5,12,9,19,1]))
  end

  def test_right_end
    assert_equal(@result, max_profit([3,5,2,4,1,6]))
  end

  def test_negative_max
    assert_equal([4,3,-1], max_profit([8,4,3,1]))
  end

  def test_zero_max
    assert_equal([4,4,0], max_profit([8,4,4,1]))
  end
end
