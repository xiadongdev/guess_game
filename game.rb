class Game
  def initialize
    @player1 = Player.new 'Alice'
    @player2 = Player.new 'Bob'
  end

  def newTurn
    puts '-------- NEW TURN --------'
    if @currentPlayer === @player1
      @currentPlayer = @player2
      other = @player1
    else
      @currentPlayer = @player1
      other = @player2
    end
    q1 = Question.new
    puts "#{@currentPlayer.name}: #{q1.askQuestion}"
    checkResult = q1.checkAnswer
    puts checkResult ? ("#{@currentPlayer.name}: Yes! You are correct") : ("#{@currentPlayer.name}: Seriously? No!")
    @currentPlayer.lives -= 1 unless checkResult
    puts @currentPlayer.lives === 0 ? ("-------- GAME OVER --------\n#{other.name} wins with a score of #{other.lives}/3" ): "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
  end

  def newGame 
    @currentPlayer = @player1
    while @currentPlayer.lives > 0 do
      newTurn
    end
  end
end