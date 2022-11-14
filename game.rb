class Game
  attr_accessor :player_one :player_two

  def initialize(name_one, name_two)
  self.player_one = Player.new(name_one)
  self.player_two = Player.new(name_one)
  @turn_num = 0
  @curr_question
  @curr_player
  end

  def greet_player 
    puts self.player_one.welcome
    puts self.player_two.welcome
  end

end

# def turn 
#   if (@turn_num.modulo(2) != 0)
#     puts "odd!"



  