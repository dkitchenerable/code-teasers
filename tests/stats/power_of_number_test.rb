require 'minitest/autorun'
require_relative '../../stats/power_of_number.rb'

class TestPowerOfNumber < MiniTest::Unit::TestCase

  def test_zero_power
    assert_equal(1, power_of_number(10, 0))
  end

  def test_one_power
    assert_equal(10, power_of_number(10, 1))
  end

  def test_even_power
    assert_equal(100, power_of_number(10, 2))
  end

  def test_odd_power
    assert_equal(1000, power_of_number(10, 3))
  end

  def test_negative_power
    assert_equal(1.0/10, power_of_number(10, -1))
  end  

end
