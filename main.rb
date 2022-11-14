#  this file is the entrypoint
require './game'
require './player'
require './question'

# start with player naming prompt

puts "Let us do arithmetic together!" 
  
  puts "Player one - Tell me your name:"
  player_one = gets.chomp
  puts "Player two - Tell me your name:"
  player_two = gets.chomp
  
# instantiate new Game class

new_game = Game.new(player_one, player_two)

# call start method from Game!
new_game.start