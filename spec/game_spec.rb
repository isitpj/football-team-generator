require './lib/game'
require './lib/player'

describe Game do
  game = Game.new

  it 'Should have players, initialised as an empty array' do
    expect(game.player_names).to eq []
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

    it 'Should allow an array of names to be passed in to the players attribute' do
      game = Game.create('Peter, Mark, Ed')
      expect(Game.instance.player_names).to eq 'Peter, Mark, Ed'
    end
  end

  describe '.instance' do
    it 'Should return an instance of itself' do
      game = Game.create
      expect(Game.instance).to eq game
    end
  end

  describe '#create_players' do
    it 'Should return an array of Player objects' do
      Game.create('Peter')
      Game.instance.create_players
      expect(Game.instance.players[0]).to be_an_instance_of Player
    end
  end

  describe '#assign_teams' do
    it '@team_one.length should equal 2' do
      Game.create('Peter, Mark, Ed, Ainsley')
      Game.instance.create_players
      Game.instance.assign_teams
      expect(Game.instance.team_one.length).to eq 2
    end

    it '@team_two.length should equal 2' do
      Game.create('Peter, Mark, Ed, Ainsley')
      Game.instance.create_players
      Game.instance.assign_teams
      expect(Game.instance.team_two.length).to eq 2
    end
  end
end
