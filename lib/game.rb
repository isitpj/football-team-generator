class Game

  attr_reader :players, :team_one, :team_two

  def self.create(players = [])
    @game = Game.new(players)
  end

  def self.instance
    @game
  end

  def initialize(players = [])
    @players = players
    @team_one = []
    @team_two = []
  end
end
