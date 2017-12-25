require_relative '../models/word.rb'
describe Word do

  describe '.words' do
    it 'to return a array of word' do
      expect(Word.words).to be_kind_of Array
    end
  end

  describe '.review_character' do
    it 'when there are a found character' do
      word = "caracter"
      arr = word.split('').map!{"-"}
      caracter1 = 'c'
      charcter2 = 'r'
      arr = Word.review_character(arr, word, caracter1)
      arr = Word.review_character(arr, word, caracter2)
      expect(arr).to eq ['c', '-', 'r', '-', 'c', '-', '-', 'r']

    end
  end

end
