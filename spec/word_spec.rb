require_relative '../models/word.rb'
describe Word do

  describe '.words' do
    it 'to return a array of word' do
      expect(described_class.words).to be_kind_of Array
    end
  end
end
