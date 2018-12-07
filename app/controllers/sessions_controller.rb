class SessionsController < ApplicationController

  def login
  @user = User.new
  end

  def create
    byebug
    @user = User.find_by(username: session_params[:username])
    if @user && @user.authenticate(params[:password])
    log_in!(@user)
    redirect_to users_path
    else
      redirect_to '/login#login'
    end
  end



def destroy
  session.delete :username
 end




 private

 def session_params
   params.permit(:username, :password, :first_name, :last_name)
 end

end
