require 'minitest/autorun'
require_relative '../../strings/remove_whitespaces.rb'

class TestRemoveWhitespaces < MiniTest::Unit::TestCase

  def test_empty_string
    assert_equal("", remove_whitespaces(""))
  end

  def test_all_spaces
    assert_equal("", remove_whitespaces("   "))
  end

  def test_spaces_at_ends
    assert_equal("word", remove_whitespaces("    word         "))
  end

  def test_mixed_spaces
    assert_equal("worduphomie", remove_whitespaces("  word up homie"))
  end  
end
