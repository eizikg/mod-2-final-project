class User < ApplicationRecord
  validates: :first_name, :last_name, :interest, uniqueness: true, presence: true
  has_many :feedbacks
  has_many :colleagues, :through => :feedbacks
  has_many :received_feedbacks, :class_name => "feedback", :foreign_key => "colleague_id"
  has_many :inverse_colleagues, :through => "received_feedback", :source => :user
end
