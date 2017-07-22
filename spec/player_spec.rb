require 'player'

describe Player do
  subject(:ben) { Player.new('Ben') }
  subject(:yuliya) { Player.new('Yuliya') }

  describe '#name' do
    it 'returns the name' do
      expect(ben.name).to eq 'Ben'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(ben.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { ben.receive_damage }.to change { ben.hit_points }.by (-10)
    end
  end
end
