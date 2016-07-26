class SpecialFeaturesController < ApplicationController
  before_action :set_special_feature, only: [:show, :edit, :update, :destroy]

  # GET /special_features
  # GET /special_features.json
  def index
    @special_features = SpecialFeature.all
  end

  # GET /special_features/1
  # GET /special_features/1.json
  def show
  end

  # GET /special_features/new
  def new
    @special_feature = SpecialFeature.new
  end

  # GET /special_features/1/edit
  def edit
  end

  # POST /special_features
  # POST /special_features.json
  def create
    @special_feature = SpecialFeature.new(special_feature_params)

    respond_to do |format|
      if @special_feature.save
        format.html { redirect_to @special_feature, notice: 'Special feature was successfully created.' }
        format.json { render :show, status: :created, location: @special_feature }
      else
        format.html { render :new }
        format.json { render json: @special_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /special_features/1
  # PATCH/PUT /special_features/1.json
  def update
    respond_to do |format|
      if @special_feature.update(special_feature_params)
        format.html { redirect_to @special_feature, notice: 'Special feature was successfully updated.' }
        format.json { render :show, status: :ok, location: @special_feature }
      else
        format.html { render :edit }
        format.json { render json: @special_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /special_features/1
  # DELETE /special_features/1.json
  def destroy
    @special_feature.destroy
    respond_to do |format|
      format.html { redirect_to special_features_url, notice: 'Special feature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_special_feature
      @special_feature = SpecialFeature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def special_feature_params
      params.require(:special_feature).permit(:name, :description)
    end
end
