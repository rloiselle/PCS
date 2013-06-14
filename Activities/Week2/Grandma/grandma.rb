# Write a Deaf Grandma program.

# Whatever you say to grandma (whatever you type in), she should respond with

# HUH?! SPEAK UP, SONNY!
# unless you shout it (type in all capitals).

# If you shout, she can hear you (or at least she thinks so) and yells back

# NO, NOT SINCE 1938!
# To make your program really believable, have grandma shout a different year each time; maybe any year at random between 1930 and 1950.

# You can't stop talking to grandma until you shout BYE.
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#ALGORITHM

#when /a-z/ grandma puts "HUH?! SPEAK UP, SONNY!"
#/A-Z/ grandma puts "NO, NOT SINCE 1938!"
#random_years = (1930..1950)
#unless BYE grandma repeats "HUH?! SPEAK UP, SONNY!"

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# class Conversation
#   def initialize
#     @say_to_gma = gets.chomp
#   end
#   def speak_up_honey
#     @say_to_gma ==~/[a-z]/
#     print "HUH?! SPEAK UP, SONNY!"
#   end
class Conversation
    def initialize
      @say_to_gma = gets.chomp
    end

  def grandma_response
    if @say_to_gma =~ /[a-z]/
      gma_response = "HUH?! SPEAK UP, SONNY!"
    elsif @say_to_gma =~ /[A-Z]/
      gma_response = "NO, NOT SINCE #{rand(1930..1950)}!"
    end
    gma_response
  end
end

convo = Conversation.new
convo

# require 'minitest/autorun'
# #require './REQUIRE TEST FILE'

# class TestGrandma < MiniTest::Unit::TestCase

#   # def test_is_it_downcase
#   #   assert(/[a-z]/=~ gets.chomp)
#   # end
#   # def test_is_it_upcase
#   #   assert(/[A-Z]/=~ gets.chomp)
#   # end
#   def test_that_gma_response_is_appropriate
#     refute(grandma_response == "NO, NOT SINCE 1938!")
#   end

# end