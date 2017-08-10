require 'minitest/autorun'
require_relative '../../stats/permute_string.rb'

class TestPermuteString < MiniTest::Unit::TestCase

  def test_empty_string
    assert_equal([], permute_string(""))
  end

  def test_accuracy
    assert_equal(["ABC", "ACB", "BAC", "BCA", "CBA", "CAB"], permute_string("ABC"))
  end

end
