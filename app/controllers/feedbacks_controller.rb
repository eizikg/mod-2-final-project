class FeedbacksController < ApplicationController

def create
  byebug
  @feedback = Feedback.create(feedback_params)
  redirect_to 'users#show'
end




  private

  def feedback_params
    params.require(:feedback).permit(:comment, :user_id, :colleague_id)
  end

  def find_feedbacks

  end

end
