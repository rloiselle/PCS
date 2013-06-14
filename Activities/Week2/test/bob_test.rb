require '../lib/bob.rb'
require 'minitest/autorun'

class BobTest < MiniTest::Unit::TestCase
  def test_sure_if_asked_question
    assert_equal("sure", Bob.ask_question("How are you?"))
  end
  def test_if_not_question
    assert_equal(nil, Bob.ask_question("How are you"))
  end
end