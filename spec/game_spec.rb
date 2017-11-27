require './lib/game'

describe Game do
  it 'Should have players, initialised as an empty array' do
    game = Game.new
    expect(game.players).to eq []
  end
end
