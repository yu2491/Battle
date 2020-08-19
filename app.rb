require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect "/play"
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:play)
  end

  get '/action' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:action)
  end

  #starts the server if ruby file executed directly
  run! if app_file == $0
end
