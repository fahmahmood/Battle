require 'sinatra/base'
require 'shotgun'
require 'capybara'
require './lib/player'
require './lib/game'



class Battle < Sinatra::Base

  # enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    $game = Game.new($player1, $player2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    $game.attack($game.player2)
    erb(:attack)
  end

  get '/switch' do
    $game.attack($game.player1)
    erb(:switch)
  end 
  # start the server if ruby file executed directly
  run! if app_file == $0
end


