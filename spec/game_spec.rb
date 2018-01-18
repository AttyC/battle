require 'game'

describe Game do
  subject(:game) { described_class.new }
  # let(:player_class) { double :player_class, new: player }
  let(:player1) { double :player }
  let(:player2) { double :player }
  let(:hitpoints) { double :hitpoints }

  describe "#attack" do
    it "attacks player" do
      expect(player2).to receive(:damage)
      game.attack(player2)
    end
  end

  # describe "#damage" do
  #   it "shows new hit points value" do
  #     player2.hitpoints = 100
  #     expect{ game.damage }.to change{ player2.hitpoints }.by(-10)
  #
  #   end
  # end
end
