require_relative 'config/environment'

class App < Sinatra::Base
    configure do 
        enable :sessions
        set :session_secret, "60615312"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        @sessions = session
        item = params["item"]
        @sessions[:item] = item
    end
end