require 'minitest/autorun'
require_relative '../../stats/is_valid_number.rb'

class TestIsValidNumber < MiniTest::Unit::TestCase

  def test_empty_array
    assert_nil(missing_number([]))
  end

  def test_single_element
    assert_equal(1, missing_number([2]))
  end

  def test_multiple_elements
    assert_equal(4, missing_number([1,2,3]))
  end

  def test_multiple_elements_out_of_order
    assert_equal(4, missing_number([2,3,5,1]))
  end  
end
