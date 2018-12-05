class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to @user
  end

  def edit

  end

  def update
    #byebug
    @user.received_feedbacks.create!(comment: user_params[:received_feedback][:comment])
    byebug
    redirect_to @user
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
    params.require(:user).permit(:first_name, :last_name, :interest, received_feedback: [:comment])
  end

end
