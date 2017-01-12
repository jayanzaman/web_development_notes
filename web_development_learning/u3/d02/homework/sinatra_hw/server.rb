module Sinatra
  class Server < Sinatra::Base
    get "/" do
      # input = ask "Who was the first man in space?"
      @gagarin = "Who was the first man in space?"
      erb :space
    end
    get "/yuri_gagarin" do
      @first = "Correct. Who was the first man on the moon?"
      erb :space
    end
    get "/neil_armstrong" do
      @moon = "Correct. How many moons does earth have?"
      erb :space
    end
    get "/name/john" do
      @john = "John"
      erb :index
    end
    get "/name/bryan" do
      @bryan = "Bryan"
      erb :index
    end
    get "/name/heidi" do
      @heidi = "Heidi"
      erb :index
    end
    get "/name/tims" do
      @tims = "Tims"
      erb :index
    end
    get "/name/jared" do
      @jared = "Jared"
      erb :index
    end

    get "/tea/:name_1/:name_2" do
      @name_1 = params[:name_1]
      @name_2 = params[:name_2]
      erb :tea
    end
    get "/battle/:x/:y" do
      r = rand(0..1)
      x = params[:x].capitalize
      y = params[:y].capitalize
      if r ==1
        @winner = "#{x} beats #{y}"
      else
        @winner = "#{y} beats #{x}"
      end

      erb :battle
    end
    get "/name/:name" do
      @name = params[:name]
      erb :index
    end
  end
end
