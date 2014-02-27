class HcsController < ApplicationController
  before_action :set_hc, only: [:show, :edit, :update, :destroy]

  # GET /hcs
  # GET /hcs.json
  def index
    @hcs = Hc.all
  end

  # GET /hcs/1
  # GET /hcs/1.json
  def show
  end

  # GET /hcs/new
  def new
    @hc = Hc.new
  end

  # GET /hcs/1/edit
  def edit
  end

  # POST /hcs
  # POST /hcs.json
  def create
    @hc = Hc.new(hc_params)

    respond_to do |format|
      if @hc.save
        format.html { redirect_to @hc, notice: 'Hc was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hc }
      else
        format.html { render action: 'new' }
        format.json { render json: @hc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hcs/1
  # PATCH/PUT /hcs/1.json
  def update
    respond_to do |format|
      if @hc.update(hc_params)
        format.html { redirect_to @hc, notice: 'Hc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hcs/1
  # DELETE /hcs/1.json
  def destroy
    @hc.destroy
    respond_to do |format|
      format.html { redirect_to hcs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hc
      @hc = Hc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hc_params
      params.require(:hc).permit(:home, :contact, :about, :employment, :services, :why)
    end
end
