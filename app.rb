require_relative 'models/word'
require_relative 'models/raffle'
require_relative 'models/game'
require_relative 'models/picture'
puts "Jogo da Forca"
word = Raffle.sort(Word.words)
puts word
game = Game.new
picture = Picture.new
print "Digite seu nome: "
name = gets.to_s
game.start(name)
arr_word = word.split('').map!{ "-" }
system('clear')

while !(game.game_over?)
  picture.defeated(game.errors)
  puts "Erros: #{game.errors}"
  arr_word.each{ |c| print " #{c}" }
	unless arr_word.include? '-'
		system('clear')
		picture.you_win
		break
  end
  puts ""
  print "Escola uma letra: "
  attempt = gets.chomp.to_s[0]

  if word.include? attempt
    puts "acertou misserave"
    arr_word = Word.review_character(arr_word, word, attempt)
  else
    game.miss
  end
  system('clear')
end

picture.defeated(game.errors) if arr_word.include? '-'
