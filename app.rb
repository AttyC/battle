require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    $hitpoints = Player.new(params[:hitpoints])
    $game = Game.new($player1, $player2)
    redirect to('/play')
  end

  get '/play' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    @hitpoints = $player2.hitpoints
    erb(:play)

  end

  get '/attack' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    $game.attack($player2)
    @hitpoints = $player2.hitpoints
    erb(:attack)
  end
end



# get '/' do
#   "value = " << session[:value].inspect
# end
#
# get '/:value' do
#   session['value'] = params['value']
# end
