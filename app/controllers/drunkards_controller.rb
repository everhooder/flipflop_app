class DrunkardsController < ApplicationController
  before_action :set_drunkard, only: [:show, :edit, :update, :destroy]

  # GET /drunkards
  # GET /drunkards.json
  def index
    @drunkards = Drunkard.all
  end

  # GET /drunkards/1
  # GET /drunkards/1.json
  def show
  end

  # GET /drunkards/new
  def new
    @drunkard = Drunkard.new
  end

  # GET /drunkards/1/edit
  def edit
  end

  # POST /drunkards
  # POST /drunkards.json
  def create
    @drunkard = Drunkard.new(drunkard_params)

    respond_to do |format|
      if @drunkard.save
        format.html { redirect_to @drunkard, notice: 'Drunkard was successfully created.' }
        format.json { render action: 'show', status: :created, location: @drunkard }
      else
        format.html { render action: 'new' }
        format.json { render json: @drunkard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drunkards/1
  # PATCH/PUT /drunkards/1.json
  def update
    respond_to do |format|
      if @drunkard.update(drunkard_params)
        format.html { redirect_to @drunkard, notice: 'Drunkard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @drunkard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drunkards/1
  # DELETE /drunkards/1.json
  def destroy
    @drunkard.destroy
    respond_to do |format|
      format.html { redirect_to drunkards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drunkard
      @drunkard = Drunkard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drunkard_params
      params.require(:drunkard).permit(:name, :surname, :birthday, :email, :comment)
    end
end
