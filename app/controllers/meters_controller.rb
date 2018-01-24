class MetersController < ApplicationController

	before_action :admin_user , only: [:show, :create, :edit, :update, :delete]
	before_action :set_building 

  def show
    @meter = @building.meters.find(params[:id])
    @noread_options = Noread.all.map { |e| [e.description,e.id] }
  end

  def new
    @meter = @building.meters.new
  end

  def create
    @meter = @building.meters.new(meter_params)
    # @v_meter_id = Meter.get_meter_id(@meter.meter_number, params[:building_id])[0]
    #session[:return_to] ||= request.referer

    #@count = @building.meters.count(:conditions => ['id < :id', id: :id])

    #@building_id = Building.where("id = ?",params[:building_id]).pluck(:building_id)
    
    # @meter_number = @mater_number.select{ |a| a = :meter_number}
    
    # @id = @building.meters.where("sequence_number is not null and meter_number = :meter_number", meter_number: @meter.meter_number).pluck(:id) 
    # @count = @building.meters.where('id < :id and sequence_number is not null', id: @id[0]).order("sequence_number").count
    # @count = Building.includes("meters").where("id < :id and sequence_number is not null", id: @id[0]).order("sequence_number").count

    @arr = Meter.where("building_id = :building_id and sequence_number is not null", building_id: params[:building_id]).pluck(:meter_number)

    if @meter.save

      # @building.each do |b|
      #   @building_id = Array.new
      #   @building_id << b.id
      # end      

      # @meter.each do |m|
      #   @meter_number = Array.new
      #   @meter_number << m.meter_number
      # end

      # @page = ((@building_id.index(@meter.building_id)+1)/1)+1
      # @current_page = ((@building_id.index(@meter.building_id)+1)/1)

      # @page = ((@arr.uniq.compact.index(@meter.meter_number)+1)/1)+1
      # @current_page = ((@arr.uniq.compact.index(@meter.meter_number)+1)/1)
      
       
      @page = ((@arr.index(@meter.meter_number)+1)/1)+1
      

      if @arr.index("#{@meter.meter_number}") == 0 && @arr.length == 1
        flash[:success] = 'Read was successfully added.'
        redirect_to "/workdays/#{@building.workday_id}?page=#{@page}" 
      else        
        flash[:success] = 'Read was successfully added.'
        redirect_to "/workdays/#{@building.workday_id}/buildings/#{@meter.building_id}?page=#{@page}"
      end
    else
      if @meter.errors.any?
        @meter.errors.full_messages.each do |msg| 
          flash[:danger] = "Unable to add read! Please reread!" 
          flash[:alert] = @meter.errors.count.to_s + " errors prohibited this meter reading from being saved" 
          flash[:warning] = msg
        end
      end
      # @page = ((@meter_number.flatten.uniq.index("#{@meter.meter_number}")+1)/1)

      @current_page = @arr.index(@meter.meter_number)+1
      redirect_to "/workdays/#{@building.workday_id}/buildings/#{@meter.building_id}?page=#{@current_page}"
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
      params.require(:meter).permit(:meter_number, :current_read, :previous_read, :current_read_demand, :meter_location, :building_id, :noread_yn, :noread_description)
    end 
end