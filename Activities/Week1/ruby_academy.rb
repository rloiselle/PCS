#This script runs through examples of writing methods in Ruby.
#Taken from:
#rubylearning.com/satishtalim/writing_own_ruby_methods.html

def hello
  'Hello'
end

puts hello

def hello1(name)
  'Hello ' + name
end

puts(hello1('rebecca'))

=begin
Vague error given here:

puts(hello)

ruby_academy.rb:12: syntax error, unexpected $end, expecting ')'
puts(hello1

=end

def hello2 name2
  'Hello ' + name2
end

puts(hello2 'rebecca')

=begin

Explicit error given here:

puts(hello2)

ruby_academy.rb:20:in `hello2': wrong number of arguments (0 for 1) (ArgumentError)
  from ruby_academy.rb:24:in `<main>'

WHY the difference??

=end

def mtd(arg1 = "default arg1", arg2= "default arg2", arg3= "default arg3")
  "#{arg1}, #{arg2}, #{arg3}."
end

puts mtd
puts mtd("ruby")

# Aliasing a method
#alias new_name old_name
# When a method is aliased, the new name refers
# to a copy of the original method's body

def oldmtd
  "old method"
end

alias newmtd oldmtd

def oldmtd
  "old improved method"
end

puts oldmtd
puts newmtd

=begin
fxns with variable number of parameters
=end

def foo(*my_string)
  my_string.inspect
end

puts foo('hello','world')
puts foo()

# why does this put the arguements into an array?
#Below is my own exploration
def opt_args(a,*x,b)
  x.inspect
end

puts opt_args('hello','world','how','r','u?')

