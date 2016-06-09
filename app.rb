require 'sinatra/base'
require 'shotgun'
require 'capybara'
require './lib/player'



class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    $player1.attack($player2)
    erb(:attack)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end


