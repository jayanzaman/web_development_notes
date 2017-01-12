class AppjayansController < ApplicationController
  before_action :set_appjayan, only: [:show, :edit, :update, :destroy]

  # GET /appjayans
  # GET /appjayans.json
  def index
    @appjayans = Appjayan.all
  end

  # GET /appjayans/1
  # GET /appjayans/1.json
  def show
  end

  # GET /appjayans/new
  def new
    @appjayan = Appjayan.new
  end

  # GET /appjayans/1/edit
  def edit
  end

  # POST /appjayans
  # POST /appjayans.json
  def create
    @appjayan = Appjayan.new(appjayan_params)

    respond_to do |format|
      if @appjayan.save
        format.html { redirect_to @appjayan, notice: 'Appjayan was successfully created.' }
        format.json { render :show, status: :created, location: @appjayan }
      else
        format.html { render :new }
        format.json { render json: @appjayan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appjayans/1
  # PATCH/PUT /appjayans/1.json
  def update
    respond_to do |format|
      if @appjayan.update(appjayan_params)
        format.html { redirect_to @appjayan, notice: 'Appjayan was successfully updated.' }
        format.json { render :show, status: :ok, location: @appjayan }
      else
        format.html { render :edit }
        format.json { render json: @appjayan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appjayans/1
  # DELETE /appjayans/1.json
  def destroy
    @appjayan.destroy
    respond_to do |format|
      format.html { redirect_to appjayans_url, notice: 'Appjayan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appjayan
      @appjayan = Appjayan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appjayan_params
      params.require(:appjayan).permit(:game, :score)
    end
end
