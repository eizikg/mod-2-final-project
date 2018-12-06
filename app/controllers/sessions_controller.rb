class SessionsController < ApplicationController
  def login
  @user = User.new
  end
  def create
    byebug
    @user = User.find_by(id: session_params[:username])
    if @user && @user.authenticate(params[:password])
    log_in!(@user)
    redirect_to users_path
  end
    end

  def new_user 
    @user = User.create(user_params)
    byebug
    redirect_to edit_session_path @user
  end

def destroy
  session.delete :username
 end

 def update
   @user = User.find_by(id: session_params[:username])
   @user.update(session_params)
 end


 private

 def session_params
   params.permit(:username, :password, :first_name, :last_name)
 end

end
