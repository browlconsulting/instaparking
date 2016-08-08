class UserinteractionsController < ApplicationController
  before_action :set_userinteraction, only: [:show, :edit, :update, :destroy]

  # GET /userinteractions
  # GET /userinteractions.json
  def index
    @userinteractions = Userinteraction.all
  end

  # GET /userinteractions/1
  # GET /userinteractions/1.json
  def show
  end

  # GET /userinteractions/new
  def new
    @userinteraction = Userinteraction.new
  end

  # GET /userinteractions/1/edit
  def edit
  end

  # POST /userinteractions
  # POST /userinteractions.json
  def create
    @userinteraction = Userinteraction.new(userinteraction_params)

    respond_to do |format|
      if @userinteraction.save
        format.html { redirect_to @userinteraction, notice: 'Userinteraction was successfully created.' }
        format.json { render :show, status: :created, location: @userinteraction }
      else
        format.html { render :new }
        format.json { render json: @userinteraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userinteractions/1
  # PATCH/PUT /userinteractions/1.json
  def update
    respond_to do |format|
      if @userinteraction.update(userinteraction_params)
        format.html { redirect_to @userinteraction, notice: 'Userinteraction was successfully updated.' }
        format.json { render :show, status: :ok, location: @userinteraction }
      else
        format.html { render :edit }
        format.json { render json: @userinteraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userinteractions/1
  # DELETE /userinteractions/1.json
  def destroy
    @userinteraction.destroy
    respond_to do |format|
      format.html { redirect_to userinteractions_url, notice: 'Userinteraction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userinteraction
      @userinteraction = Userinteraction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userinteraction_params
      params.require(:userinteraction).permit(:question, :answer, :parkinglot_id)
    end
end
