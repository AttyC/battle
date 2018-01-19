require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe "#player1" do
    it "retrives player1" do
      expect(game.player1).to eq player1
    end
  end

  describe "#player2" do
    it "retrives player2" do
      expect(game.player2).to eq player2
    end
  end

  describe "#attack" do
    it "attacks player" do
      expect(player2).to receive(:damage)
      game.attack(player2)
    end

  end

  describe '#active_player' do
    it 'starts as player1' do
      expect(game.active_player).to eq player1
    end
  end

  describe '#switch_turns' do
    it 'switches player' do
      game.switch_turns
      expect(game.active_player).to eq player2
    end
  end

end
