require 'minitest/autorun'
require_relative '../../strings/remove_duplicates.rb'

class TestRemoveDuplicates < MiniTest::Unit::TestCase

  def test_empty_string
    assert_equal("", remove_duplicates(""))
  end

  def test_all_spaces
    assert_equal(" ", remove_duplicates("   "))
  end

  def test_no_duplicates
    assert_equal("word", remove_duplicates("word"))
  end

  def test_duplicates
    assert_equal("abreh", remove_duplicates("aabbrreehh"))
  end  
end
