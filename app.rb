require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    'Hello RPS!'
    erb(:index)
  end

  post '/names' do
    @game = Game.new
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb(:play)
  end

  get '/rps' do
    @game = Game.new
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    @weapon = params[:weapon]
    erb(:rps)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
