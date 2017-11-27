class Game

  attr_reader :players, :team_one, :team_two

  def initialize(players = [])
    @players = players
    @team_one = []
    @team_two = []
  end
end
