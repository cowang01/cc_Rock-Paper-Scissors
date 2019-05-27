require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/rps.rb')
also_reload('./models/rps.rb')

get '/' do
  random = rand(3)
  options = ["Rock", "Paper", "Scissors"]
  @choice = options[random]
  erb( :home )
end

get '/:player1/:player2' do
  game = Rps.new(params[:player1], params[:player2])
  @computer = params[:player2]
  @winner = game.battle()
  erb( :result )
end
