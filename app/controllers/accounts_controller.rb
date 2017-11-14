class AccountsController < ApplicationController

 	before_action :admin_user, only: [:index, :show, :new, :create, :edit, :update, :destroy]

	def index
	  @account = Account.all
	  if params[:account_number]
	  	@account = Account.search(params[:account_number])
	  else
	    @account = Account.all
	  end

	end   

    def show
	  @account = Account.find(params[:id])
	end

	private
  	  def account_params
        params.require(:account).permit(:account_number, :management_name, :tenant_name)
      end

end
