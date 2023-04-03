require './player_class'
require './match_class'

# generate a new math question by picking two numbers between 1 and 20
# prompt for the question
# if question is correct, record score and generate a new question
# if question is incorrect and life >  0 - a life
# if question is incorrect and life  = 0 return winning player and their score

player1 = Player.new("Jenny")
player2 = Player.new("Ariel")
newMatch = Match.new(player1, player2)
newMatch.startMatch