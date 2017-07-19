require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    # p params
    session[:player_one] = params[:player_one]
    session[:player_two] = params[:player_two]
    redirect '/play'
  end

  get '/play' do
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    erb(:play)
  end

  get '/attack' do
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
