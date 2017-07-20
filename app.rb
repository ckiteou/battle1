require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_one])
    $player_2 = Player.new(params[:player_two])
    p $player_1
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:play)
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
