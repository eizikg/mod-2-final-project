class ApplicationController < ActionController::Base

  helper_method :current_user

  def current_user
   User.find_by(id: session[:user_id])
  end

  def setup_global_errors
    @errors = flash[:errors]
  end

  def log_in!(user)
      session[:user_id] = user.id
    end

def logged_in?
  !!session[:user_id]
 end

 # def authenticate
 #   redirect_to new_session_path unless logged_in?
 # end

end
