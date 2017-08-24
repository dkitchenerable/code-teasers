require 'minitest/autorun'
require_relative '../../stats/square_root.rb'

class TestSquareRoot < MiniTest::Unit::TestCase
  def test_0
    assert_equal(0, square_root(0))
  end

  def test_even
    assert_equal(2, square_root(4))
  end

  def test_odd
    assert_equal(3, square_root(9))
  end

  def test_decimal
    assert_equal(4.183300132670378, square_root(17.5))
  end
end
