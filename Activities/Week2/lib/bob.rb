# He answers 'Sure.' if you ask him a question.
# He answers 'Whatever.' if you tell him something.
# He answers 'Woah, chill out!' if you yell at him (ALL CAPS).
# He says 'Fine. Be that way!' if you address him without actually saying anything.

class Bob
  def self.ask_question(user_input_question)
    if user_input_question.include? "?"
      return "sure"
    end
  end

  def self.tell_something
  end

  def self.yell_at_him_all_caps
  end

  def self.address_with_silence
  end
end