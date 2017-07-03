require 'minitest/autorun'
require_relative '../../arrays/max_in_window.rb'

class TestMaxInWindow < MiniTest::Unit::TestCase
  def setup
    @array = [-4,2,-5,1,-1,6]
  end

  def test_empty
    assert_equal([], max_in_window([], 1))
  end

  def test_array_less_than_window
    assert_equal([-4,2,2,2,2,6], max_in_window(@array, 7))
  end

  def test_array_equals_window_size
    assert_equal([-4,2,2,2,2,6], max_in_window(@array, 6))
  end

  def test_accuracy
    assert_equal([-4,2,2,1,1,6], max_in_window(@array, 2))
  end

  def test_window_size_one
    assert_equal([-4,2,-5,1,-1,6], max_in_window(@array, 1))
  end
end
