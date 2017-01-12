module Sinatra
  class Server < Sinatra::Base
    get "/" do
      erb :index
    end
    get '/users/:user' do
      @user = params[:user]
      erb :user
    end
  end
end
