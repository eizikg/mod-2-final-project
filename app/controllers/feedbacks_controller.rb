class FeedbacksController < ApplicationController

def create
  @feedback = Feedback.create(feedback_params)
  redirect_to 'users#show'
end

def update
  byebug
  @user.received_feedbacks.create!(comment: user_params[:received_feedback][:comment],user_id: current_user.id)
  redirect_to @user
end


  private

  def feedback_params
    params.require(:feedback).permit(:comment, :user_id, :colleague_id)
  end

  def find_feedbacks

  end

end
