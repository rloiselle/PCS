 class Calculator
   def ask(question)
     question.match(/What is (-?\d+) plus (-?\d+)?/) do |m|
      # print m[1] + m[2] #Checking to see what m[1] and m[2] look like
        m[1].to_i + m[2].to_i
     end
   end
 end

calc = Calculator.new()
calc.ask("What is 4 plus 4?") #put print in front to see what the output should be

