require 'sinatra'
require_relative './lib/player.rb'

class Game < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.new(params[:name])
    erb :play
  end

  run! if app_file == $0
end
