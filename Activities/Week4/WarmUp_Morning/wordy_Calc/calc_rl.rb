class Calculator
  #This is not taking a math question word format. It is taking the inputs to a math question
        # def initialize(number1, operator, number2)
        #   @num1 = number1
        #   @operator = operator
        #   @num2 = number2
        # end

        # def format_question
        #   "What is #{@num1} #{@operator} #{@num2}"
        # end

  def ask(question)
    question.match(/What is (-?\d+) plus (-?\d+)?/) do |m|
      # print m[1] + m[2]
       m[1].to_i + m[2].to_i
    end
  end
end

calc = Calculator.new(1,"+",1)
# calc.ask("What is 4 plus 4?")
print calc.format_question