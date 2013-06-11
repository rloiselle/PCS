#Example code from the book

secOld = 60 * 60 * 24 * 365 * 31
puts "I am " + secOld.to_s + " seconds old"

puts "what is your first name?"
nam1 = gets.chomp
puts "what is your middle name?"
nam2 = gets.chomp
puts "what is your last name?"
nam3 = gets.chomp
puts "Greetings " + nam1 + " " + nam2 + " " + nam3

puts "what is your favorite number?"
favnum = gets.to_i
betternum = favnum + 1
puts "What a lovely number, though " + betternum.to_s + " is larger."

puts "what is your name?"
nam = gets.chomp
puts "There are " + nam.length.to_s + " characters in your name."

employee = "I want a raise"
angryboss = 'whaddaya mean ' + employee + " ?!? You\'re fired!!"
puts employee
puts angryboss.upcase

line_width = 50
puts("Table of Contents".center(line_width))
puts("Chapter 1: Getting Started".ljust(line_width/2) + "page 1".rjust(line_width/2))
puts("Chapter 2: Numbers".ljust(line_width/2) + "page 9".rjust(line_width/2))
puts("Chapter 3: Letters".ljust(line_width/2) + "page 13".rjust(line_width/2))

