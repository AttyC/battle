require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }
  let(:hitpoints) { double :hitpoints }

  # describe "#initialize" do
  #   it "shows instance variable" do
  #     (game.player1)
  #   end
  # end

  describe "#attack" do
    it "attacks player" do
      expect(player2).to receive(:damage)
      game.attack(player2)
    end
  end


end
