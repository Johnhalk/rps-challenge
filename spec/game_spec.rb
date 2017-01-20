require 'game'

describe Game do
  subject(:game) { described_class.new }
  it 'returns a random weapon when called' do
    expect(game.weapon_random).to include('Rock')
  end
end
