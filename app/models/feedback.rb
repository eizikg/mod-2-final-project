class Feedback < ApplicationRecord
  # validates :user_id, :comment, :colleague_id, presence: true
  belongs_to :giver, class_name: "User", foreign_key: "user_id"
  belongs_to :receiver, :class_name => "User", foreign_key: "colleague_id"
end
