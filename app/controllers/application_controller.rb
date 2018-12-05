class ApplicationController < ActionController::Base

  def log_in!(user)
  session[:user_id] = user.id
end

def setup_global_errors
  @errors = flash[:errors]
end

def logged_in?
  !!session[:user_id]
end

def setup_user_stuff
  if session["user_id"]
    @logged_in_user = User.find(session["user_id"])
    setup_voting_attrs
  end
end

def authenticate
  redirect_to new_session_path unless logged_in?
end

end
