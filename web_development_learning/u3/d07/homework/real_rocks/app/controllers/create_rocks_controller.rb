class CreateRocksController < ApplicationController
  before_action :set_create_rock, only: [:show, :edit, :update, :destroy]

  # GET /create_rocks
  # GET /create_rocks.json
  def index
    @create_rocks = CreateRock.all
  end

  # GET /create_rocks/1
  # GET /create_rocks/1.json
  def show
    @id = params[:id]
  end

  # GET /create_rocks/new
  def new
    @create_rock = CreateRock.new
  end

  # GET /create_rocks/1/edit
  def edit
  end

  # POST /create_rocks
  # POST /create_rocks.json
  def create
    @create_rock = CreateRock.new(create_rock_params)

    respond_to do |format|
      if @create_rock.save
        format.html { redirect_to @create_rock, notice: 'Rock was successfully created.' }
        format.json { render :show, status: :created, location: @create_rock }
      else
        format.html { render :new }
        format.json { render json: @create_rock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_rocks/1
  # PATCH/PUT /create_rocks/1.json
  def update
    respond_to do |format|
      if @create_rock.update(create_rock_params)
        format.html { redirect_to @create_rock, notice: 'Create rock was successfully updated.' }
        format.json { render :show, status: :ok, location: @create_rock }
      else
        format.html { render :edit }
        format.json { render json: @create_rock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_rocks/1
  # DELETE /create_rocks/1.json
  def destroy
    @create_rock.destroy
    respond_to do |format|
      format.html { redirect_to create_rocks_url, notice: 'Create rock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_rock
      @create_rock = CreateRock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def create_rock_params
      params.require(:create_rock).permit(:name, :description, :image)
    end
end
