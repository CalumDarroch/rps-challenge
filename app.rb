require 'sinatra'
require_relative './lib/player.rb'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect to('/play')
  end

  get '/play' do
    @player = Player.new(session[:name])
    erb :play
  end

  run! if app_file == $0
end