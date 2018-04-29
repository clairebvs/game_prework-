require './lib/game'

game = Game.new
user_guess = game.welcome
game.play(user_guess)
