require 'game'
require 'player'

describe Game do
  subject(:game) { described_class.new }
  subject(:player_1) { double :player }
  subject(:player_2) { double :player }

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end
