class SessionsController < ApplicationController
  def new
 @users = User.all
  end
  def create
    byebug
    session[:username] = params[:user]
    redirect_to users_path
    end

def destroy
  session.delete :username
 end

end
