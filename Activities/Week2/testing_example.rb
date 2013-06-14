require "minitest/autorun"
require "noun"

class TestNoun < MiniTest::Unit::TestCase
  def setup
    @noun = Noun.new
  end

  def test_verb
    assert_equal 42, @noun.verb
  end

  # ... more tests ...
end