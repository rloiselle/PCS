
class Person
  attr_accessor :first, :last

  def initialize(first,last)
    @first = first
    @last = last
    @valid = "false"
  end

  def full_name
    @first + " " + @last
  end

  def valid?
    @valid = !@first.empty? && !@last.empty?
  end

end


 require "minitest/autorun"

# describe "Person", "A simple person example" do

#   it "has a full name" do
#     person = Person.new("Yukihiro", "Matsumoto")
#     person.full_name.must_equal "Yukihiro Matsumoto"
#   end

# end

class TestPerson < MiniTest::Unit::TestCase

describe Person do

  describe "when name is empty" do
    it "is not valid" do
      person = Person.new
      person.wont_be @valid?

  describe "when name is not empty" do
    it "is valid" do
      person = Person.new("Yukihiro", "Matsumoto")
      person.must_be :valid?
    end

    it "has a full name" do
      person = Person.new("Yukihiro", "Matsumoto")
      person.full_name.must_equal "Yukihiro Matsumoto"
    end
  end