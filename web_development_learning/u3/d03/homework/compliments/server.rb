module Sinatra
  class Server < Sinatra::Base

    require "colorize"

    compliments = [
      "People behind you in class think you are the perfect height.",
      "Your instructors think you're amazing.",
      "Your posture during breaks effectively masks your exhaustion.",
      "Your commit messages are an inspiration to us all",
      "Your fingers are magic on the keys",
      "You are the moon of my life...my sun and stars"
    ]


    get "/" do
      @randcolor = String.colors[rand(0..String.colors.length)]

      @comp = compliments[rand(0..compliments.length)]
      puts @comp
      erb :index
    end

    get "/:name" do
      @randcolor = String.colors[rand(0..String.colors.length)]

      @name = params[:name].capitalize
      @comp = compliments[rand(0..compliments.length)]
      erb :index
    end
  end
end
