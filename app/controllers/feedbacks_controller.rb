class FeedbacksController < ApplicationController
  before_action: find_feedbacks, only [:edit, :update, :destroy]

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.create(feedback_params)
    redirect_to @feedback.user
  end

  def edit
  end

  def update
    @feedback = Feedback.update(feedback_params)
    redirect_to @feedback.user
  end

  def destroy
    @feedback.destroy
  end


  private

  def find_feedbacks
    @feedback = Feedback.find(params[:id])
  end

  def feedback_params
    params.require(:feedback).permit(:user_id, :comment, :colleague_id)
  end
  
end
