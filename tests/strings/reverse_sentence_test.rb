require 'minitest/autorun'
require_relative '../../strings/reverse_sentence.rb'

class TestReverseSentence < MiniTest::Unit::TestCase

  def test_empty_string
    assert_equal("", reverse_sentence(""))
  end

  def test_single_word
    assert_equal("word", reverse_sentence("word"))
  end

  def test_single_letters
    assert_equal("u o i e a", reverse_sentence("a e i o u"))
  end  

  def test_full_sentence
    assert_equal("a word this is", reverse_sentence("is this word a"))
  end  
end
