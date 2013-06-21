
# # #This section of code demonstrates how an instance of Robot must be created when only using class methods.

# class Robot
#   # def initialize()  #instance method
#   #   @name = created_name    #instance variable
#   #   #@macAddress = "a number that can't be changed"    #instance variable
#   # end

#    def created_name
#     puts "Please enter a name for your robot"   #use puts to enter name on next line
#     name = gets.chomp
#     print "Your Robot's name is #{name}"    #do not use return because the method will exit before printing the message.
#    end

#   # def Robot.make_robot_name(created_name)  #self.make_robot_name does same
#   #   @name = created_name  #created name is placeholder for the string put inside @name
#   # end

# end

# #Both of the following codes are required when an initializer method is not available
# #First you must make the instance, then you must run the created_name method in order to assign the name.
# robot1 = Robot.new()
# print robot1.created_name

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# #This piece of code requests a robot name twice because the created_name method is called twice
# #This combination of the initializer method and Robot.new() automatically calls the created_name method
# #So while both the initialize method and created name method are important
# # calling Robot1.created_name is not

# class Robot
#   def initialize()
#     @name = created_name
#     #@macAddress = "a number that can't be changed"
#   end

#    def created_name
#     puts "Please enter a name for your robot"   #use puts to enter name on next line
#     name = gets.chomp
#     print "Your Robot's name is #{name}"    #do not use return because the method will exit before printing the message.
#    end

# end

# #Both of the following codes are required when an initializer method is not available
# #First you must make the instance, then you must run the created_name method in order to assign the name.

# Robot1 = Robot.new()
# #print Robot1.created_name

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# #DOES THE METHOD CREATED_NAME REQUIRE SELF.??
# #because self is a class method, the method is not available for creating to instances
# #Thus you can only directly call the method on the class Robot not instances of it.

# class Robot
#   # def initialize()
#   #   @name = created_name
#   #   #@macAddress = "a number that can't be changed"
#   # end

#    def self.created_name()
#     puts "Please enter a name for your robot"   #use puts to enter name on next line
#     name = gets.chomp
#     print "Your Robot's name is #{name}"    #do not use return because the method will exit before printing the message.
#    end

# end

# #the #commented line can not be used because the method we've created is a class method and only accessible by calling itself or class Robot
# #no new instances of robot can be made as this code stands...?
# robot1 = Robot.new()

# #puts robot1.instance_of? Robot  #puts true, indicates the instance has been created.

# print robot1.created_name  #an instance of the class Robot can not access the Class method created_name because created_name belongs to the Class method only

# #There is no way to assign a name to the instance robot1 because the method is a class method


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#This section of code demonstrates how an instance of Robot must be created when using an initializer method
#Run Program through terminal to see how it functions, leave test method commented out.
#When you get the gist, un-comment the testing methods to see how it works together... ;)

# class Robot
#   def initialize()      #If a parameter is put in the parenthesis (eg. created_name), you can directly specify the robot's name when you create a new instance of Robot
#     @name = created_name
#     #@macAddress = "a number that can't be changed"
#   end

#    def self.created_name(nm)  #In order for the test to run, self. must be specified so that the method can be called on itself. Also, any argument name must be given so that the method requires one arguement in the test.
#     puts "Please enter a name for your robot"  #use puts to enter name on next line
#       #nil  #change to "" or "Bob" to get fail
#     name = gets.chomp
#     #print "Your Robot's name is #{name}"  #do not use return because the method will exit before printing the message.

#     #when testing, the above call must be commented out to get a pass because the test expected = nil and print or puts will give a nil
#     #Otherwise leave the final string commented out for the test to receive the name input and either pass or fail depending on what the user enters.
#    end

# end

# #Robot1 = Robot.new()
# #print Robot1.created_name


# require 'minitest/autorun'

# class RobotTest < MiniTest::Unit::TestCase

# #This test method tests that the robot name is nil
# #This corresponds to the 1st .make_robot_name method above.

#   def test_created_name_makes_name?
#     assert_equal(nil, Robot.created_name(@name))
#   end
# end

# #This test method test that the robot's name is "Bob"
# #Un-comment, when using the second .make_robot_name method above

# #   def test_is_robot_named_bob
# #     assert_equal("Bob", Robot.make_robot_name(@name))
# #   end
# # end

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Initial Test trial


class Robot
  def initialize()
    @name = created_name
    #@macAddress = "a number that can't be changed"
  end

  # def Robot.make_robot_name(created_name)  #self.make_robot_name does same
  #   @name = created_name  #created name is placeholder for the string put inside @name
  # end

# #Un-comment this code to prove that "Bob" is the Robot's name
  def Robot.make_robot_name(created_name)  #self.make_robot_name does same
    @name = "Bob"  #created name is placeholder for the string put inside @name
  end

end


 require 'minitest/autorun'

 class RobotTest < MiniTest::Unit::TestCase

# #This test method tests that the robot name is nil
# #This corresponds to the 1st .make_robot_name method above.

#   def test_does_robot_have_name
#     assert_equal(nil, Robot.make_robot_name(@name))
#   end
# end

#This test method test that the robot's name is "Bob"
#Un-comment, when using the second .make_robot_name method above

  def test_is_robot_named_bob
    assert_equal("Bob", Robot.make_robot_name(@name))
  end
end

