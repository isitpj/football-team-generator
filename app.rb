ENV['RACK_ENV'] ||= 'development'
require 'sinatra/base'

class TeamGenerator < Sinatra::Base

  get '/' do
    erb :home
  end

  run! if app_file == $0
end
