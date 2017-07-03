require 'minitest/autorun'
require_relative '../../arrays/binary_search.rb'

class TestMeme < MiniTest::Unit::TestCase
  def setup
    @array = [1,2,3,4,5]
  end

  def test_empty
    assert_equal(false, binary_search([], 1))
  end

  def test_no_match
    assert_equal(false, binary_search(@array, 6))
  end

  def test_match
    assert(binary_search(@array, 4))
  end

  def test_match_at_middle
    assert(binary_search(@array, 3))
  end

  def test_match_at_left_end
    assert(binary_search(@array, 1))
  end

  def test_match_at_right_end
    assert(binary_search(@array, 5))
  end

  # non recursive implementation tests
    def test_empty_nr
    assert_equal(false, binary_search([], 1, 'nr'))
  end

  def test_no_match_nr
    assert_equal(false, binary_search(@array, 6, 'nr'))
  end

  def test_match_nr
    assert(binary_search(@array, 4, 'nr'))
  end

  def test_match_at_middle_nr
    assert(binary_search(@array, 3, 'nr'))
  end

  def test_match_at_left_end_nr
    assert(binary_search(@array, 1, 'nr'))
  end

  def test_match_at_right_end_nr
    assert(binary_search(@array, 5, 'nr'))
  end
end
