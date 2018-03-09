class Game
  MAX_ERRORS = 7
  attr_reader :name
  attr_reader :errors

  def initialize
    @errors = 0
  end

  def start(name)
    @name = name
  end

  def game_over?
    @errors > MAX_ERRORS
  end

  def miss
    @errors += 1
  end
end
