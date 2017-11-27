require './lib/game'

describe Game do
  it 'Should have players, initialised as an empty array' do
    game = Game.new
    expect(game.players).to eq []
  end

  it 'Should have a team_one' do
    game = Game.new
    expect(game.team_one).to eq []
  end

  it 'Should have a team_two' do
    game = Game.new
    expect(game.team_two).to eq []
  end
end
