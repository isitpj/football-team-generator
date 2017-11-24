ENV['RACK_ENV'] ||= 'development'
require 'sinatra/base'

class TeamGenerator < Sinatra::Base

  get '/' do
    erb :home
  end

  post '/teams' do
    @players_string = params[:players]
    redirect '/teams'
  end

  get '/teams' do
    'Page under construction, please check back soon'
  end

  run! if app_file == $0
end
