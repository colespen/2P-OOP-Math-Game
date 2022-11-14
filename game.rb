class Game
  attr_accessor :player_one, :player_two

  def initialize(name_one, name_two)
  self.player_one = Player.new(name_one)
  self.player_two = Player.new(name_two)
  @turn_num = 0
  @curr_question
  @curr_player
  @opponent
  end

  def greet_player 
    puts self.player_one.welcome, self.player_two.welcome
    puts "Alright, let's put on our thinking helmets...\n"
  end
  

  def turn 
    @turn_num +=1

    if @turn_num.odd?
      @curr_player = player_one
      @opponent = player_two
    else
      @curr_player = player_two
      @opponent = player_one
    end
    puts "It is #{@curr_player.name}'s go."
    puts ""

    @curr_question = Question.new
    puts @curr_question.question
    answer = gets.chomp
    puts ""
    

    if @curr_question.verify(answer)
      
      puts "Nice one #{@curr_player.name}. #{answer} is correct."
      puts "SCORE: #{@curr_player.name} has #{@curr_player.life}/3 and  #{@opponent.name} has #{@opponent.life}/3"
      self.turn
    else
      @curr_player.deplete
      puts "Nope. That doesn't make sense."
      puts "SCORE: #{@curr_player.name} has #{@curr_player.life}/3 lives and  #{@opponent.name} has #{@opponent.life}/3"

      if @curr_player.kill
        self.end_game
      end
    end

    self.turn
  end


  def start_game
    self.greet_player
    self.turn
  end

  def end_game
    puts "#{@opponent.name} WINS with #{@opponent.life}/3 lives remaining!" 
    puts "#{@curr_player.name} has lost this round..."
    exit()
  end
end