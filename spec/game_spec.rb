require './lib/game'

describe Game do
  game = Game.new

  it 'Should have players, initialised as an empty array' do
    expect(game.players).to eq []
  end

  it 'Should have a team_one' do
    expect(game.team_one).to eq []
  end

  it 'Should have a team_two' do
    expect(game.team_two).to eq []
  end
end
