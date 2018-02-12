require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game.rb')

get '/play/:s1/:s2' do
  s1 = params[:s1]
  s2 = params[:s2]
  game = Game.new(s1,s2)
  @game = game.play()
  erb(:result)
end

get '/' do
  erb(:welcome)
end
