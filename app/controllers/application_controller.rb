class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  # before_action :ensure_login
  include SessionsHelper
  include UsersHelper


end
