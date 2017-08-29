require 'minitest/autorun'
require_relative '../../arrays/sum_of_three.rb'

class TestSumOfThree < MiniTest::Unit::TestCase
  def test_no_match
    test = [1,2,3]
    val = 10
    assert_equal(false, sum_of_three(test, val))
  end

  def test_match
    test = [1,2,3,-1,0,5,6]
    val = 8
    assert(sum_of_three(test, val))
  end

  def test_match_ends_only
    test = [1,2,3,-1,0,-6,6]
    val = 9
    assert(sum_of_three(test, val))
  end  

  def test_negative_match
    test = [1,2,3,-1,0,5,-6]
    val = -4
    assert(sum_of_three(test, val))
  end
end
