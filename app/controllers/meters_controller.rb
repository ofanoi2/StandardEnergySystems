class MetersController < ApplicationController

	before_action :admin_user , only: [:show, :create, :edit, :update, :delete]
	before_action :set_building , :set_workday

  def show
  	@meter = @building.meters.find(params[:id])
  end

  def new
    @meter = @building.meters.new
  end

  def create
    @meter = @building.meters.new(meter_params)

    if @meter.save
      flash[:success] = 'Read was successfully added.'
      redirect_to workday_building_path(@workday,@building) 
    else
      flash.now[:danger] = "Unable to add read!" 
      redirect_to [@building,@meter]
    end

  end

  def edit
    @meter = @building.meters.find(params[:id])
  end

  def update
    @meter = @building.meters.find(params[:id])
   
    if @meter.update(meter_params)
      # Handle a successful update.
        flash[:success] = "meter updated"
      redirect_to @building
    else
      render 'edit'
    end
  end


  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workday
      @workday = Building.where("id = ?",params[:building_id]).pluck(:workday_id)
    end

    def set_building
      @building = Building.find(params[:building_id])
    end
      
    def meter_params
      params.require(:meter).permit(:meter_number, :current_read)
    end 
end