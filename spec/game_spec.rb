require 'game'

describe Game do 

  subject(:game) { described_class.new(player1, player2)}
  let (:player1) { double(:player) }
  let (:player2) { double(:player) }

  describe '#attack' do
    
    it 'responds to attack' do
      expect(game).to respond_to(:attack)
    end 

    it 'checks that suffer_damage is called on the player' do
      expect(player2).to receive(:suffer_damage)
      game.attack(player2)
    end 

  end 

  describe '#player1 and player 2, upon initialization' do
    it 'accepts two separate player instances' do
      expect(game.player1).to eq player1
      expect(game.player2).to eq player2
    end 
  end 
  
end