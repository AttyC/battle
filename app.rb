require 'sinatra/base'

class Battle < Sinatra::Base



  # run! if app_file == $0
  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:play)
  end
end
