require('sinatra')
require('sinatra/contrib/all')
require_relative('models/game')
require('json')

get '/' do
  erb(:front)
end


get '/:player/:computer' do
  player = params[:player]
  computer = params[:computer]
  game = Game.new(player, computer)
  game.play
end

# get '/scissors/:computer' do
#   computer = params[:computer]
#   game = Game.new(scissors, computer)
#   @scissors = game.play
# end

# get '/paper/:computer' do
#   computer = params[:computer]
#   game = Game.new(paper, computer)
#   @paper = game.play
# end