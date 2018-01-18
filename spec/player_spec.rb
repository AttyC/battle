require 'player'

describe Player do
  # let (:name) { double :name }
  subject(:player1) { described_class.new('Alice', 100) }
  subject(:player2) { described_class.new('Bob', 100) }

  describe 'initialize' do
    it 'returns player1 name' do
      expect(player1.name).to eq 'Alice'
    end
  end

  describe "#damage" do
    it "shows new hit points value" do
      expect{ player2.damage }.to change{ player2.hitpoints }.by(-10)
    end
  end

end
