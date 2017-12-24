require_relative '../models/raffle.rb'
require_relative '../models/word.rb'
describe Raffle do
  describe '.sort' do

    it 'returns a string' do
      words = Word.words
      expect(described_class.sort(words)).to be_kind_of String
    end
    #it 'returns a different words' do
    #  word1 = described_class.sort(Word.words)
    #  word2 = described_class.sort(Word.words)
    #  expect(word1).not_to  eq word2
    #end
  end
end
