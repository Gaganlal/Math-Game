class Questions
  attr_accessor :answer, :print

  def initialize
    @num1 = rand(10) + rand(10) 
    @num2 = rand(10) + rand(10)
    @answer = @num1 + @num2
    @print = "What does #{@num1} + #{@num2} equals to?"
  end
end


