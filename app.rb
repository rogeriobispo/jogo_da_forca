require_relative 'models/word.rb'
require_relative 'models/raffle.rb'
require_relative 'models/game.rb'
require 'byebug'

puts "Jogo da Forca"

word = Raffle.sort(Word.words)

game = Game.new
print "Digite seu nome: "
name = gets.to_s
game.start(name)
arr_word = word.split('').map!{ "-" }
puts word
while !(game.game_over?)
  system('clear')
  puts "Erros: #{game.errors}"
  arr_word.each{ |c| print " #{c}" }
  puts ""
  print "Escola uma letra: "
  attempt = gets.chomp.to_s[0]
  if word.include? attempt
    puts "acertou misserave"
  else
    game.miss
  end
end



