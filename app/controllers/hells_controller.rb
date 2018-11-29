class HellsController < ApplicationController
  before_action :set_hell, only: [:show, :edit, :update, :destroy]

  # GET /hells
  # GET /hells.json
  def index
    @hells = Hell.all
  end

  # GET /hells/1
  # GET /hells/1.json
  def show
  end

  # GET /hells/new
  def new
    @hell = Hell.new
  end

  # GET /hells/1/edit
  def edit
  end

  # POST /hells
  # POST /hells.json
  def create
    @hell = current_user.Hell.new(hell_params)

    respond_to do |format|
      if @hell.save
        format.html { redirect_to @hell, notice: 'Hell was successfully created.' }
        format.json { render :show, status: :created, location: @hell }
      else
        format.html { render :new }
        format.json { render json: @hell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hells/1
  # PATCH/PUT /hells/1.json
  def update
    respond_to do |format|
      if @hell.update(hell_params)
        format.html { redirect_to @hell, notice: 'Hell was successfully updated.' }
        format.json { render :show, status: :ok, location: @hell }
      else
        format.html { render :edit }
        format.json { render json: @hell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hells/1
  # DELETE /hells/1.json
  def destroy
    @hell.destroy
    respond_to do |format|
      format.html { redirect_to hells_url, notice: 'Hell was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hell
      @hell = Hell.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hell_params
      params.require(:hell).permit(:top, :tas, :stat)
    end
end
