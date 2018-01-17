require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    session['player1'] = params['player1']
    session['player2'] = params['player2']
    redirect to('/play')
  end

  get '/play' do
    @player1 = session['player1']
    @player2 = session['player2']
    erb(:play)
  end
end



# get '/' do
#   "value = " << session[:value].inspect
# end
#
# get '/:value' do
#   session['value'] = params['value']
# end
