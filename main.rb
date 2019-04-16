class Game
  def initialize
    @player1 = Player.new
    @player2 = Player.new
  end

  def newTurn
    #switch currentPlayer
    mathQ
    #check currentPlayer input
    #currentPlayer.lives - 1
    #puts player1.lives, player2.lives
  end

  def newGame
    currentPlayer = @player1
    newTurn
    #call newTurn until player.lives = 0
  end
end

class Player
  attr_accessor :lives
  def initialize
    @lives = 3
  end
end

class Question
  def answer
    @answer = @rand1 + @rand2
  end
  
  def initilize
    @rand1 = rand(1..20)
    @rand2 = rand(1..20)
  end

  def askQuestion
    puts 'What does #{rand1} plus #{rand2} equal? '
  end

  def checkAnswer number
    number === @answer ? true : false
  end

end
