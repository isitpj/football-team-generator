ENV['RACK_ENV'] ||= 'development'
require 'sinatra/base'

class TeamGenerator < Sinatra::Base

  get '/' do
    erb :home
  end

  post '/teams' do
    'Page under construction, please check back soon'
    @players_string = params[:players]
    @players_array = @players.split(',')
  end

  run! if app_file == $0
end
