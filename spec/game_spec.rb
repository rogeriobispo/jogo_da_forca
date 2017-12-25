require_relative '../models/game.rb'

RSpec.describe Game, type: :model do

  describe '#start' do
    it 'to start with a name' do
      subject.start("Rogerio")
      expect(subject.name).to be subject.name
    end

    it 'new game with 0 errors' do
      expect(subject.errors).to eq 0
    end
  end

  describe '#game_over?' do
    it 'more than 7 mistake' do
      8.times{ subject.miss }
      expect(subject.game_over?).to be true
    end

    it 'less than 7 mistake' do
      5.times { subject.miss }
      expect(subject.game_over?).to be false
    end
  end
end
