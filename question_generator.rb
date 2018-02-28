

class Question

  attr_reader :answer

def initialize
  @random1 = rand(0..20)
  @random2 = rand(0..20)
  @answer = @random1 + @random2
end

def render_question
  puts "*******HERE IS YOUR QUESTION**********"
  puts "What is #{@random1} + #{@random2}?"
end



end

# turn1 = Question.new
# turn1.render_question
# puts turn1.answer
# turn1.generate_question
