class Question
  def initialize
    @rand1 = rand(1..20)
    @rand2 = rand(1..20)
  end

  def askQuestion
    "What does #{@rand1} plus #{@rand2} equal?"
  end

  def checkAnswer
    gets.chomp.to_i === @rand1 + @rand2 ? true : false
  end

end