class Shoe

#all instances of class shoe with have laces and rubber soles
  def self.structure
    @@straps = "laces"
    @@soles = "rubber"
  end

#Initiallizing instance variable of size
  def initialize(size)
    @sizes = size
  end

#Creating an instance methods to add sizes to the instance of class Shoe
  def input_size(size)
    @sizes << size
  end

#Iterating through the array to look at all items
  def look_at_sizes
    @sizes.each {|item| puts item}
  end

#Method using instance variable array to see if item in stock
  def ask_for_size
    wanted_size = gets.chomp
    @sizes.each {|item|

       if item.to_i == wanted_size.to_i
        print "in stock"
        break
      end
      if item.to_i != wanted_size.to_i
        print "out of stock"
        break
      end
    }

  end

end

sandal = Shoe.new([8,9,10])
sandal.look_at_sizes

sandal.input_size(11)
sandal.look_at_sizes

sandal.ask_for_size

require 'minitest/autorun'

class TestShoe < MiniTest::Unit::TestCase
  def test_if_input_size_stores_input
    refute()
  end

end

