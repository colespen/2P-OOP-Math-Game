class Question
  attr_accessor :question

  def initialize
    @num_one = rand(1..100)
    @num_two = rand(1..100)
    @answer = @num_one + @num_two
    @question = "What is the sum of #{@num_one} and #{@num_two}? \n"
  end

  def num_generated
    puts @num_one
    puts @num_two
  end

  def verify(answer)
    answer.to_i == @answer
  end
end