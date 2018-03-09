require_relative '../models/game.rb'
class Picture
  def defeated(errors)
    first_lines(lines_to_show(errors)).each do |line|
      puts line
    end
  end

  def you_win
    File.open('libs/you_win.txt', 'r').readlines.each do |line|
      puts line
    end
  end

  private

  def size
    file.each_line.count
  end

  def first_lines(qtde_lines)
    array_picture.first(qtde_lines)
  end

  def array_picture
    file.to_a
  end

  def file
    File.open('libs/game_over.txt', 'r')
  end

  def lines_to_show(errors)
    errors * lines_per_errors
  end

  def lines_per_errors
    size / Game::MAX_ERRORS
  end
end
