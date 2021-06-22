require "./game"
require "./player"

game = Game.new
p1 = Player.new("player1")
p2 = Player.new("player2")
puts "im here"
game.start_game(p1, p2)