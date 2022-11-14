#  this file is the entrypoint
require './game'
require './player'
require './question'

# start with player naming prompt

puts "Let us do arithmetic together!" 
  
  puts "Player one - Tell me your name:"
  name_one = gets.chomp
  puts "Player two - Tell me your name:"
  name_two = gets.chomp
  
# instantiate new Game class

new_game = Game.new(name_one, name_two)

# call start method from Game!
new_game.start_game