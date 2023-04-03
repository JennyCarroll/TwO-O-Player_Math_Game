# Player: keep track of how many lives they have and their name
class Player

  def initialize (name)
    @name = name
    @lives = 3
  end
  
  def name
    @name
  end

  def lives
    @lives
  end

  def updateLives 
    @lives = @lives - 1
  end
end


