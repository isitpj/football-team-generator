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
    @player_names.each do |name|
      @players << Player.new(name)
    end
  end
end
