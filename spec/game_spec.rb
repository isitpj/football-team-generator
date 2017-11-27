require './lib/game'

describe Game do
  game = Game.create

  it 'Should have players, initialised as an empty array' do
    expect(game.players).to eq []
  end

  it 'Should have a team_one' do
    expect(game.team_one).to eq []
  end

  it 'Should have a team_two' do
    expect(game.team_two).to eq []
  end

  describe '.create' do
    it 'Should create a new instance of Game' do
      expect(Game.create).to be_an_instance_of Game
    end
  end

  describe '.instance' do
    it 'Should return an instance of itself' do
      game = Game.create
      expect(Game.instance).to eq game
    end
  end
end
