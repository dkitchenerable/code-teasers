require 'minitest/autorun'
require_relative '../../strings/regular_expression.rb'

class TestRegularExpression < MiniTest::Unit::TestCase

  def test_empty_string
    assert(regular_expression("", ""))
  end

  def test_empty_string_non_empty_pattern
    assert_equal(false, regular_expression("", "f*"))
  end

  def test_no_operator_pattern
    assert(regular_expression("abbc", "abbc"))
  end

  def test_one_operator
    assert(regular_expression("abc", "ab."))
  end  

  def test_mixed_operator
    assert(regular_expression("aabbbbbcdda", ".*b*c*d*a*"))
  end  
  
  def test_false_case
    assert_equal(false, regular_expression("aabbbbbcdda", "a*b*c*da"))
  end  

end
