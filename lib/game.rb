class Game
  attr_reader :player_names, :team_one, :team_two, :players

  def self.create(player_names = [])
    @game = Game.new(player_names)
  end

  def self.instance
    @game
  end

  def initialize(player_names = [])
    @player_names = player_names
    @team_one = []
    @team_two = []
    @players = []
  end

  def create_players
    @player_names.split(',').each do |name|
      @players << Player.new(name.strip)
    end
  end

  def assign_teams
    shuffle_players
    @team_one = []
    @team_two = []
    @players.each do |player|
      @players.index(player) < (@players.length / 2) ? @team_one << player : @team_two << player
    end
  end

  private

  def shuffle_players
    @players.shuffle!
  end
end
