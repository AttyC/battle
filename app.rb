require 'sinatra/base'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    $game = Game.new(player1, player2)
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    $game.attack(@game.player2)
    $game.switch_turns
    erb :attack
  end
end



# get '/' do
#   "value = " << session[:value].inspect
# end
#
# get '/:value' do
#   session['value'] = params['value']
# end
