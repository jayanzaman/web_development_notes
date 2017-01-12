module Sinatra
  class Server < Sinatra::Base
    get "/" do
      erb :index
    end
    get '/add/:x/:y' do
      @num_1 = params[:x].to_f
      @num_2 = params[:y].to_f
      @added = @num_1 + @num_2
      erb :add
    end
    get '/subtract/:x/:y' do
      @num_1 = params[:x].to_f
      @num_2 = params[:y].to_f
      @subtracted = @num_1 - @num_2
      erb :subtract
    end
    get '/multiply/:x/:y' do
      @num_1 = params[:x].to_f
      @num_2 = params[:y].to_f
      @multiplied = @num_1 * @num_2
      erb :multiply
    end
    get '/divide/:x/:y' do
      @num_1 = params[:x].to_f
      @num_2 = params[:y].to_f
      @divided = @num_1 / @num_2
      erb :divide
    end

  end
end
