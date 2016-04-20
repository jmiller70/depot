class ApplicationController < ActionController::Base
  before_action :authorize
  # Prevent CSRF attacks by raising an exception.
#<<<<<<< HEAD
  # For APIs, you may want to use :null_session instead
#=======
  # For APIs, you may want to use :null_session instead.

#>>>>>>> development
  protected

  def authorize
    unless User.find_by(id: session[:user_id])
      redirect_to login_url, notice: "Please log in"
    end
  end


end
