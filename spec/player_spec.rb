require './lib/player'

describe 'Player' do
  it 'Should have a name' do
    player = Player.new('Peter')
    expect(player.name).to eq 'Peter'
  end
end
