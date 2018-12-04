class User < ApplicationRecord
  has_many :feedbacks
  has_many :colleagues, :through => :feedbacks
  has_many :received_feedbacks, :class_name => "Feedback", :foreign_key => "colleague_id"
  has_many :inverse_colleagues, :through => "received_feedbacks", :source => :user
end
