require 'minitest/autorun'
require_relative '../../strings/palindrome_substrings.rb'

class TestPalindromeSubtrings < MiniTest::Unit::TestCase

  def test_empty_string
    assert_equal([], palindrome_substrings(""))
  end

  def test_single_palindrome
    assert_equal(["aba"], palindrome_substrings("aba"))
  end

  def test_multiple_palindromes
    assert_equal(["aa", "bb", "bbb", "abbba", "aabbbaa", "bb", "aa"], palindrome_substrings("aabbbaa"))
  end
end
