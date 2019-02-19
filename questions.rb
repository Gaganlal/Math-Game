class Questions

  def initialize
    @num1 = rand(10) + rand(10) 
    @num2 = rand(10) + rand(10)
  end

  def answer
    @num1 + @num2
  end

  def correct? (user_answer)
    answer == user_answer
  end

  def text
    "What does #{@num1} + #{@num2} equal?"
  end
end


