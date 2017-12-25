class Game
  attr_reader :name
  attr_reader :errors

  def initialize
    @errors = 0
  end

  def start(name)
    @name = name
  end

  def game_over?
    if @errors > 7
      true
    else
      false
    end
  end

  def miss
    @errors += 1
  end
end
