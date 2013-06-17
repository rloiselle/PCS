require 'highline/import'


class Question

attr_reader :question,:analysis_answer

  def initialize(question, answers=[])
    @question = question
    @answers = answers
    @analysis_answer = ""
  end

  def appropriate_answer?(answer)

    @analysis_answer = answer  #This must be first otherwise the while loop will only sense true
    @answers.include?(answer)||
    @answers.empty?()
  end

end

question1 =Question.new("how are you?")
question2 =Question.new("were you bad today?", ["yes","no"])
question3 =Question.new("did you put deodorant on today?")
question4 =Question.new("Are you wearing underwear?")
question5 =Question.new("Do you're feet stink?")

array_of_questions = [question1,question2,question3,question4,question5]

array_of_questions.shuffle!

array_of_questions.each do |item|
  # puts item.question  # ask does this line and next in one swoop!
  # answer = gets.chomp
  answer = ask item.question
  #compare to a list of appropriate answers
  #if not appropriate then return WRONG!
  while !item.appropriate_answer?(answer)
    answer = ask "wrong!! #{item.question}"
  end
end

say "Ok...Based on your answers to my questions"
if question2.analysis_answer == "yes"
  say "I think you are doing Great!"
else
  say "Ohh, that's too bad. We have to commit you now."
end