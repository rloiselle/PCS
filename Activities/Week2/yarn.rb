#require 'minitest/autorun'

class Yarn
  attr_accessor(:color, :material)

#attr_accessor-reader method (reads output)
  # def color()
  #   return @color
  # end

#attr_accessor- writer method (takes input from user)
  # def color=(val)
  #   @color = val
  # end
#same as above for next variable
  # def material()
  #   return @material
  # end
  # def material=(val)
  #   @material = val
  # end

#initialize variables so they can be set with a call to Yarn.new
  def initialize(color, material)
    @color = color
    @material = material
  end

  def secure_things()
    puts 'I am now tied up'
  end

  def display()
    puts "I am a #{@color} #{@material} yarn"
  end
  # def to_s()
  #   return "I am a #{@color} #{@material} yarn"
  # end
end

#y=Yarn.new() used with attr_accessor
y = Yarn.new("blue","cotton")
 # y.color=("blue")  # set variable with =()
 # y.color = "blue"
puts y.color  #this
 # puts(y.color())
 #y.display()

# puts(y.to_s())
#puts(y)

#puts y.methods.sort
#puts "The id of y is #{y.object_id}."
  # def str
  #   @str
  # end

  # def str(color)
  #   @str = color
  # end

  # attr_accessor :color
  # def empty?(color)
  #   color.length == 0
  # end
#end

#y = Yarn.new()
#print y

# class TestYarn < MiniTest::Unit::TestCase
#   def test_if_empty
#     assert_equal("blue", @y.str)#y=Yarn.new("blue"))
#   end
# end
