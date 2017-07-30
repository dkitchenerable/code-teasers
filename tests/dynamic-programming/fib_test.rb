require 'minitest/autorun'
require_relative '../../dynamic-programming/fib.rb'


class TestFib < MiniTest::Unit::TestCase

  def test_zero
    assert_equal(0, fib(0))
  end

  def test_less_than_three
    assert_equal(1, fib(2))
  end

  def test_sequences_over_three
    assert_equal(2, fib(3))
    assert_equal(3, fib(4))
    assert_equal(5, fib(5))
    assert_equal(8, fib(6))
    assert_equal(13, fib(7))
    assert_equal(21, fib(8))
    assert_equal(34, fib(9))
  end
end
