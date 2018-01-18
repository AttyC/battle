require 'player'

describe Player do
  # let (:name) { double :name }
  subject(:player1) { described_class.new('Alice') }

  describe 'initialize' do
    it 'returns player1 name' do
      expect(player1.name).to eq 'Alice'
    end
  end

end
