require 'sinatra/base'

class TeamGenerator < Sinatra::Base

  get '/' do
    'Hola, mundo'
  end

  run! if app_file == $0
end
