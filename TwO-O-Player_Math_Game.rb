# generate a new math question by picking two numbers between 1 and 20
# prompt for the question
# if question is correct, record score and generate a new question
# if question is incorrect and life >  0 - a life
# if question is incorrect and life  = 0 return winning player and their score

"Player 1: What does #{} plus #{} equal?"
answer = $stdin.gets.chomp
"Player 1: Seriously? No!"
or "Player 1: YES! You are correct."
"P1: #{}/3 vs P2 #{}/3"

next turn
"Player 2: What does #{} plus #{} equal?"

"Player #{} wins with a score of #{}/3"
"Good  bye!"

Nouns:
Player: keep track of how many lives they have and their number
class Player
  def initialize (number)
    @number = number
    @lives = 3
  end

  def getLives
    @lives
  end

  def updateLives 
    @lives = @lives - 1
  end
end
Match: generate numbers for the question and output who the winner is
