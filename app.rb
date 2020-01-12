require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @sessions = session
    item_input = params["item"]
    @sessions[:item] = item_input
    erb :checkout
  end
end