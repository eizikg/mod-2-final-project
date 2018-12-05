class Feedback < ApplicationRecord
  validates: :user_id, :comment, :colleague_id, presence: true
  belongs_to :user
  belongs_to :colleague, :class_name => "user"
end
