class WorkdaysController < ApplicationController
before_action :admin_user, only: [:index, :new, :create, :edit, :update, :destroy]
	def index
	  @workdays = Workday.all

	  #@workdays = Workday.select('id, building_number, building_name, building_address')
	end    

    def show
	  @workday = Workday.find(params[:id])
	end

	def new
	  @workday = Workday.new 
	end

	def create
	  #render plain: params[:workday].inspect
	  @workday = Workday.new(workday_params)		  
	  if @workday.save
	    redirect_to @workday
	  else
	  	render 'new'
	  end
	end	
	
	def edit
	  @workday = Workday.find(params[:id])	
	end

    def update
	  @workday = Workday.find(params[:id])
	 
	  if @workday.update(workday_params)
	  	# Handle a successful update.
        flash[:success] = "Workday updated"
	    redirect_to @workday
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @workday = Workday.find(params[:id])
	  @workday.destroy
	 
	  redirect_to workdays_path
	end

	private
  	  def workday_params
        params.require(:workday).permit(:title, :workday_type)
      end

end
