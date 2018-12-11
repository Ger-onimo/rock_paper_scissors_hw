require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('models/game')
also_reload('./models/*')


get '/home' do
  erb(:home)
end

get '/welcome' do
  erb(:welcome)
end

get '/result' do
  erb(:result)
end

get 'check_win/:hand1/:hand2' do
  @winner = Game.check_win( params[:hand1], params[:hand2])
  erb(:result)
end
