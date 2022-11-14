class Player
  attr_accessor :question

  def initialize
    @num_one = rand(1..1000)
    @num_two = rand(1..1000)
    @answer = @num_one + @num_two
    @question = "What is the sum of #{@num_one} and #{@num_two}?"
  end

  def num_generated
    puts @num_one
    puts @num_two
  end

  def verify(answer)
    answer.to_s == @answer
  end
end