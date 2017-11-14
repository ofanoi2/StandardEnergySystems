class MetersController < ApplicationController

	before_action :admin_user , only: [:show, :create, :edit, :update, :delete]
	before_action :set_building

  def show
  	@meter = @building.meters.paginate(page: params[:page], per_page: 1)
  end

  def create
    @meter = @building.meters.new(meter_params)

    respond_to do |format|
      if @meter.save
        format.html { redirect_to @building.meters.paginate(page: params[:page], per_page: 1), notice: 'Read was successfully added.' }
      else
        format.html { redirect_to @building.meters.paginate(page: params[:page], per_page: 1), alert: "Unable to add read!" }
      end
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
    def set_building
      @building = Building.find(params[:building_id])
    end
      
    def meter_params
      params.require(:meter).permit(:current_read)
    end 
end