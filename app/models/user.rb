class User < ApplicationRecord
  has_many :feedbacks
  has_many :colleagues, :through "comments"
  has_many :recieved_feedbacks, :class_name => "feedback", :foreign_key => "user_id"
  has_many :inverse_colleagues, :through => "recieved_feedbacks", :source => :user
end
