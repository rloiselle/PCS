class Foo
  # defs are the set of instructions or characteristics for the class Foo
  def self.bar
    puts 'class method'
  end

  def baz
    puts 'instance method'
  end
end

Foo.bar
#In order to call class methods...

#Foo.baz
#This doesn't work because

Foo.new.baz
#Instance methods must be initialzed with the .new method

#Foo.new.bar
#This doesn't work because

