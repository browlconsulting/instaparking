class ParkinglotsController < ApplicationController
  before_action :set_parkinglot, only: [:show, :edit, :update, :destroy]

  # GET /parkinglots
  # GET /parkinglots.json
  def index
    @parkinglots = Parkinglot.all
  end

  # GET /parkinglots/1
  # GET /parkinglots/1.json
  def show
  end

  # GET /parkinglots/new
  def new
    @parkinglot = Parkinglot.new
  end

  # GET /parkinglots/1/edit
  def edit
  end

  # POST /parkinglots
  # POST /parkinglots.json
  def create
    @parkinglot = Parkinglot.new(parkinglot_params)

    respond_to do |format|
      if @parkinglot.save
        format.html { redirect_to @parkinglot, notice: 'Parkinglot was successfully created.' }
        format.json { render :show, status: :created, location: @parkinglot }
      else
        format.html { render :new }
        format.json { render json: @parkinglot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parkinglots/1
  # PATCH/PUT /parkinglots/1.json
  def update
    respond_to do |format|
      if @parkinglot.update(parkinglot_params)
        format.html { redirect_to @parkinglot, notice: 'Parkinglot was successfully updated.' }
        format.json { render :show, status: :ok, location: @parkinglot }
      else
        format.html { render :edit }
        format.json { render json: @parkinglot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parkinglots/1
  # DELETE /parkinglots/1.json
  def destroy
    @parkinglot.destroy
    respond_to do |format|
      format.html { redirect_to parkinglots_url, notice: 'Parkinglot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parkinglot
      @parkinglot = Parkinglot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parkinglot_params
      params.require(:parkinglot).permit(:name, :address, :addressreference, :pricinghour, :pricingday, :businesshours, :camera, :security, :user_id, :ubigeo_id, :nearby_id)
    end
end
