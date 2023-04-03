# Match: generate numbers for the question and output who the winner is
class Match
  @@instance_count = 0
  def initialize (player1, player2)
    @@instance_count += 1
    @P1 = player1
    @P2 = player2
    @currentPlayer = @@instance_count % 2 == 0 ? @P2 : @P1
    @otherPlayer = @currentPlayer == @P1 ? @P2 : @P1
    @N1 = rand(1..20)
    @N2 = rand(1..20)
    @result = @N1 + @N2
  end
  
  def startMatch
    while (@P1.lives() > 0 && @P2.lives() > 0) do
      puts "#{@currentPlayer.name}: What does #{@N1} plus #{@N2} equal?"
      response = $stdin.gets.chomp.to_i
      if @result == response
        puts "#{@currentPlayer.name}: YES! You are correct."
        puts "P1: #{@P1.lives}/3 vs P2 #{@P2.lives}/3"
        break;
      else 
        puts "#{@currentPlayer.name}: Seriously? No!" 
        @currentPlayer.updateLives
        puts "P1: #{@P1.lives}/3 vs P2 #{@P2.lives}/3"
        break;
      end
    end
    if @P1.lives == 0
      puts "Player 2 wins with a score of #{@P2.lives}/3"
      puts "Good  bye!"
    elsif @P2.lives == 0
      puts "Player 1 wins with a score of #{@P1.lives}/3"
      puts "Good  bye!"
    else
      matchTitle = "Match #{@@instance_count}"
      matchTitle = Match.new(@P1, @P2)
      matchTitle.startMatch
    end
  end
end