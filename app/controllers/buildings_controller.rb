class BuildingsController < ApplicationController
	
	before_action :admin_user , only: [:show, :edit, :delete]
	before_action :set_workday
	

	def show
	  @building = @workday.buildings.find(params[:id])	
	  @meter = @building.meters.distinct.paginate(page: params[:page], per_page: 1)
	  # @meter = @building.meters.pluck(:meter_number).paginate(page: params[:page], per_page: 1)
	end

	def edit
	  @building = @workday.buildings.find(params[:id])	
	end

    def update
	  @building = @workday.buildings.find(params[:id])
	 
	  if @building.update(building_params)
	  	# Handle a successful update.
        flash[:success] = "Building updated"
	    redirect_to @building
	  else
	    render 'edit'
	  end
	end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workday
      @workday = Workday.find(params[:workday_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def building_params
      params.require(:building).permit(:building_number, :building_name, :building_address, :complete)
    end  	

end