ENV['RACK_ENV'] ||= 'development'
require 'sinatra/base'
require './lib/game'
require './lib/player'
require 'pry'

class TeamGenerator < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb :home
  end

  post '/teams' do
    @game = Game.create(params[:players])
    @game.create_players
    @game.assign_teams
    redirect '/teams'
  end

  get '/teams' do
    @team_one = @game.team_one
    @team_two = @game.team_two
    erb :teams
  end

  post '/shuffle_teams' do
    @game.assign_teams
    redirect '/teams'
  end

  run! if app_file == $PROGRAM_NAME
end
