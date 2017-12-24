require_relative '../models/game.rb'
require 'byebug'
RSpec.describe Game, type: :model do

  describe '#start' do
    it 'to start with a name' do
      new_game = subject
      new_game.start("Rogerio")
      expect(new_game.name).to be new_game.name
    end
  end
end
