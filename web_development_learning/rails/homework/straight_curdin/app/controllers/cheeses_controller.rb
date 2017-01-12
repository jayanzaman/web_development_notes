class CheesesController < ApplicationController
  def index
    @cheeses = Cheese.all
  end

  def show
    @id = params[:id]
    @cheese = Cheese.find(@id)
  end

  def new
    @cheese = Cheese.new
  end

  def edit
  end

  def create
    Cheese.create(name: params[:name], milk_type: params[:milk_type], description: params[:description], image_url: params[:image_url])

      redirect_to "/cheeses"

    # name = params[:name]
    # desc = params[:description]
    # milk_type = params[:milk_type]
    # image = params[:image_url]
    # Cheese.create(name: name, milk_type: milk_type, image_url: image, description: desc)
    # redirect_to "/cheeses"
  end

  def edit
    @id = params[:id]
    @cheese = Cheese.find(@id)
  end

  def update
    @id = params[:id]
    @cheese = Cheese.find(@id)
    Cheese.update(name: params[:name], milk_type: params[:milk_type], description: params[:description], image_url: params[:image_url])
    redirect_to "/cheeses/"+@id
  end

  def destroy
    Cheese.destroy(params[:id])
    redirect_to "/cheeses"
  end


end
