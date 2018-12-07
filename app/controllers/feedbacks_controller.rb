class FeedbacksController < ApplicationController


#creates new feedback on a user page
def create
  Feedback.create!(comment: feedback_params[:comment],user_id: current_user.id, colleague_id: feedback_params[:user_id])
  redirect_to user_path(feedback_params[:user_id])
end


private

  def feedback_params
    params.permit(:comment, :user_id, :colleague_id)
  end

  def find_feedbacks

  end

end
