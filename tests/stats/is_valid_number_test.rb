require 'minitest/autorun'
require_relative '../../stats/is_valid_number.rb'

class TestIsValidNumber < MiniTest::Unit::TestCase

  def test_empty_string
    assert_equal(false, is_valid_number?(""))
  end

  def test_valid_non_decimal
    assert(is_valid_number?("123"))
  end

  def test_valid_decimal
    assert(is_valid_number?("123.124"))
  end

  def test_leading_decimal
    assert_equal(false, is_valid_number?(".123"))
  end  

  def test_leading_zero
    assert_equal(false, is_valid_number?("0123"))
  end    

  def test_invalid_end
    assert_equal(false, is_valid_number?("123.124."))
  end  

  def test_not_a_digit
    assert_equal(false, is_valid_number?("12F003"))
  end  

  def test_multiple_decimals
    assert_equal(false, is_valid_number?("12.12.1"))
  end
end
