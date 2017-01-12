class CheesesController < ApplicationController
  def index
    @cheeses = Cheese.all
  end

  def show
    @id = params[:id]
    @cheese = Cheese.find(@id)
  end

end

