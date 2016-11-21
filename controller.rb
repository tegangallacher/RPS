require('sinatra')
require('sinatra/contrib/all')
require_relative('models/game')
require('json')

get '/' do
  erb(:front)
end


get '/:player' do
  player = params[:player]
  game = Game.new(player)
  @result = game.play
  if result == 'scissors'
    erb(:scissors)
  elsif result == 'paper'
    erb(:paper)
  elsif result == 'rock'
    erb(:rock)
  else
    erb(:draw)
  end
end
