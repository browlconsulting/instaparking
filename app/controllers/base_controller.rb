class BaseController < ApplicationController
    # restrict access to authenticated users
  before_action :authenticate_user!
  before_filter :admin_only, :except => :tos
  
  def admin_only
    if current_user.role != "admin" then
        redirect_to :back, :alert => "Access denied."
    end
    # unless current_user.admin?
    #   redirect_to :back, :alert => "Access denied."
    # end
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
