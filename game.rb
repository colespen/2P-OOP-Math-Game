class Game
  attr_accessor :player_one :player_two

  def initialize(name_one, name_two)
  @player_one = Player.new(name_one)
  @player_two = Player.new(name_one)
  @turn_num = 0
  @curr_question
  @curr_player
  end

  def greet_player 
    puts "Hello #{player_one} and #{player_two}, put on your thinking caps."
end

# def turn 
#   if (@turn_num.modulo(2) != 0)
#     puts "odd!"



  