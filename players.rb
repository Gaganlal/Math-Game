class Players
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def alive?
    @lives > 0
  end

  def dead?
    !alive?
  end

  def lose_life
    @lives -= 1
  end
end

