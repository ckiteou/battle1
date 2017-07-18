require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    @player_one = params[:player_one]
    @player_two = params[:player_two]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
