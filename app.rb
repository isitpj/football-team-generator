ENV['RACK_ENV'] ||= 'development'
require 'sinatra/base'

class TeamGenerator < Sinatra::Base
  enable :sessions

  get '/' do
    erb :home
  end

  post '/teams' do
    session[:players] = params[:players]
    redirect '/teams'
  end

  get '/teams' do
    erb :teams
  end

  run! if app_file == $PROGRAM_NAME
end
