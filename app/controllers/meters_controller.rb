class MetersController < ApplicationController

	before_action :admin_user , only: [:show, :create, :edit, :update, :delete]
	before_action :set_workday, :set_building, :set_building_id, :set_building_number,:set_meter_number #, :set_meter_id

  def show
  	@meter = @building.meters.find(params[:id])
    @v_pre_read = Meter.get_previous_read(@meter.meter_number, params[:building_id])[0]
    @noread_options = Noread.all.map { |e| [e.description,e.id] }
  end

  def new
    @meter = @building.meters.new
  end

  def create
    @meter = @building.meters.new(meter_params)
    @v_meter_id = Meter.get_meter_id(@meter.meter_number, params[:building_id])[0]
    #session[:return_to] ||= request.referer

    #@count = @building.meters.count(:conditions => ['id < :id', id: :id])

    #@building_id = Building.where("id = ?",params[:building_id]).pluck(:building_id)
    
    # @meter_number = @mater_number.select{ |a| a = :meter_number}
    
    # @id = @building.meters.where("sequence_number is not null and meter_number = :meter_number", meter_number: @meter.meter_number).pluck(:id) 
    # @count = @building.meters.where('id < :id and sequence_number is not null', id: @id[0]).order("sequence_number").count
    # @count = Building.includes("meters").where("id < :id and sequence_number is not null", id: @id[0]).order("sequence_number").count
     
    if @meter.save
      if @meter_number.flatten.uniq.index("#{@meter.meter_number}") == 0 && @meter_number.flatten.uniq.length == 3
        @page = ((@building_number.index(@building_id[0])+1)/1)+1
        redirect_to "/workdays/#{@workday[0]}?page=#{@page}" 
      elsif @meter_number.flatten.uniq.index("#{@meter.meter_number}") == @meter_number.length
        @page = ((@building_number.index(@building_id[0])+1)/1)+1
        redirect_to "/workdays/#{@workday[0]}?page=#{@page}" 
      else        
        flash[:success] = 'Read was successfully added.'
        @page = ((@meter_number.flatten.uniq.index("#{@meter.meter_number}")+1)/1)+1
        redirect_to "/workdays/#{@workday[0]}/buildings/#{@building_id[0]}?page=#{@page}"
      end
    else
      if @meter.errors.any?
        @meter.errors.full_messages.each do |msg| 
          flash[:danger] = "Unable to add read! Please reread!" + 
                             @meter.errors.count.to_s + "errors prohibited this meter reading from being saved" + 
                                msg
        end
      end
      # @page = ((@meter_number.flatten.uniq.index("#{@meter.meter_number}")+1)/1)
      redirect_to "/buildings/#{@building_id[0]}/meters/#{@v_meter_id}"
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

    def set_building_id
      @building_id = Building.where("id = ?",params[:building_id]).pluck(:id)
    end
    
    def set_building_number
      @building_number = Building.where("workday_id = :workday_id", workday_id:@workday[0]).pluck(:id)
    end  

    def set_meter_number
      @meter_number = Building.includes("meters").distinct.where("meter_number is not null and building_id = :building_id", building_id: params[:building_id]).order("sequence_number").pluck(:meter_number, :sequence_number)
    end 

    def meter_params
      params.require(:meter).permit(:meter_number, :current_read, :previous_read, :current_read_demand, :demand_yn, :noread_yn, :noread_description)
    end 
end