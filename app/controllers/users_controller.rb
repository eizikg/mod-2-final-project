class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :update, :destroy]


  def index
    @users = User.all
  end

  def show
  @user = User.find(params[:id])
  @feedback = Feedback.new
  end

  def new
    @user = User.new
  end

  def edit

  end

  def create
    @user = User.new(user_params)
    render action: 'edit'
  end


  def reupdate
    @user = User.create!(user_params)
    redirect_to users_path
  end




  def destroy
    @user.destroy
    redirect_to @users
  end


  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:username, :password, :first_name, :last_name, :interest, received_feedback: [:comment])
  end


end
