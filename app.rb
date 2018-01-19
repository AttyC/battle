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
    Game.create(player1, player2) #this is created in GAme class
    redirect to('/play')
  end

  before { @game = Game.instance } #this is the instance of the Game created in Game class

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack(@game.opponent) ? erb(:lose) : erb(:attack)
  end

  get '/switch' do
    @game.switch_turns
    redirect to('/play')
  end
end
