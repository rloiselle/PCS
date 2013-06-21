require './scrabble3.rb'

require 'minitest/autorun'

# class TestScrabble < MiniTest::Unit::TestCase
# end

# require_relative './scrabble'
# require 'minitest/autorun'
 require 'minitest/pride'

class ScrabbleTest < MiniTest::Unit::TestCase
  def setup
    @word ="cabbage"
  end

  def test_word_should_have_length_greater_than_1
    assert(@word.length > 1)
  end

  def test_letters_have_value_match
    assert_match(value(@word))
  end

  def teardown
    @word = nil
  end
end


# require 'minitest/autorun'

# # class TestScrabble < MiniTest::Unit::TestCase
# # end

# # require_relative './scrabble'
# # require 'minitest/autorun'
#  require 'minitest/pride'

# class ScrabbleTest < MiniTest::Unit::TestCase
#   def test_values_for_all_letters
#     refute_empty(Scrabble.values)
#   end

# #   def test_empty_word_scores_zero
# #     assert_equal 0, Scrabble.score("")
# #   end

# #   def test_nil_word_scores_zero
# #     assert_equal 0, Scrabble.score(nil)
# #   end

# #   def test_scores_very_short_word
# #     assert_equal 1, Scrabble.score('a')
# #   end

# #   def test_simple_word_scores_the_number_of_letters
# #     assert_equal 6, Scrabble.score("street")
# #   end

# #   def test_complicated_word_scores_more
# #     assert_equal 22, Scrabble.score("quirky")
# #   end

# #   def test_case_insensitive
# #     assert_equal 20, Scrabble.score("MULTIBILLIONAIRE")
# #   end
#  end
