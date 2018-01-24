class BuildingsController < ApplicationController
	
	before_action :admin_user , only: [:show, :edit, :delete]
	before_action :set_workday

	def show
	  
	  # @meter_number = @building.meters.distinct.pluck(:meter_number, :sequence_number)
	  # @arr = Array.new
	  # @meter_number.each do |key,variable|
	  # 	@arr<<key
	  # end
	  # @arr = @arr.uniq.compact.paginate(page: params[:page], per_page: 1)
	  # # @meter = @building.meters.where("meter_number in (:meter_number)",meter_number: @meter_number).paginate(page: params[:page], per_page: 1)
	  # # @meter_id = @building.meters.distinct.pluck(:id)
	  # @arr.each do |key|
	  # 	@meter = Meter.where("sequence_number is not null and meter_number = :meter_number", meter_number: key)
	  # 	@id = @meter[0]
	  # 	@v_pre_read = Meter.get_previous_read(key, params[:id])[0]
	  # 	@meter_location = Meter.get_meter_location(meter_number: key)
	  # end
	  # @page = @workday.buildings.pluck(:building_number)
	  # @v_page = (@page.index(@building.building_number)+1)+1 
	  # @total_meters = Meter.get_count_meters_per_building(@building.id)
	  # @v_total = Meter.get_count_meters_readings_entered(@k,@building.id)
	  # @v_total /= @total_meters.to_f*100

	  @building = Building.find(params[:id])	
      
      @meter = Meter.where("building_id = :building_id and sequence_number is not null", building_id: params[:id]).to_a.paginate(page: params[:page], per_page: 1)

      @noread_options = Noread.all.map { |e| [e.description,e.id] }

      @v_tm = Meter.get_count_meters_per_building(params[:id])
      @v_t = Meter.get_count_meters_readings_entered(params[:id])
	  @v_t /= @v_tm.to_f*100

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