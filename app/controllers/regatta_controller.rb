class RegattaController < ApplicationController
  before_action :set_regattum, only: [:show, :edit, :update, :destroy]

  # GET /regatta
  # GET /regatta.json
  def index
    @regatta = Regattum.all
  end

  # GET /regatta/1
  # GET /regatta/1.json
  def show
    @races = @regattum.races.order('start_from ASC')
  end

  # GET /regatta/new
  def new
    @regattum = Regattum.new
    @regattum.organizer_id = params[:organizer_id] unless params[:organizer_id].blank? 
  end

  # GET /regatta/1/edit
  def edit
  end



  # POST /regatta
  # POST /regatta.json
  def create

    organizer_id = params[:organizer_id] unless params[:organizer_id].blank?
    @regattum = Regattum.new(regattum_params)
    @regattum.organizer_id = organizer_id unless organizer_id.blank?
    respond_to do |format|
      if @regattum.save
        format.html { redirect_to @regattum, notice: 'Regattan har skapats' }
        format.json { render :show, status: :created, location: @regattum }
      else
        format.html { render :new }
        format.json { render json: @regattum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regatta/1
  # PATCH/PUT /regatta/1.json
  def update
    respond_to do |format|
      if @regattum.update(regattum_params)
        format.html { redirect_to @regattum, notice: 'Regattan har uppdaterats.' }
        format.json { render :show, status: :ok, location: @regattum }
      else
        format.html { render :edit }
        format.json { render json: @regattum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regatta/1
  # DELETE /regatta/1.json
  def destroy
    @regattum.destroy
    respond_to do |format|
      format.html { redirect_to regatta_url, notice: 'Regattan har raderats' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regattum
      @regattum = Regattum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regattum_params
      params.require(:regattum).permit(:name, :organizer_id, :description, :common_goal_id, :common_goal_only)
    end
end
