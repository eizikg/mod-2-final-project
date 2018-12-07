class User < ApplicationRecord
  has_many :given_feedbacks, class_name: "Feedback"
  has_many :colleagues, :through => :given_feedbacks, source: :receiver
  has_many :received_feedbacks, class_name: "Feedback", foreign_key: "colleague_id"
  has_many :feedback_givers, :through => :received_feedbacks, source: :giver
  # has_many :colleagues, through: :given_feedbacks
  #has_many :feedback_givers, through: :received_feedbacks, foreign_key: "colleague_id", class_name: "User"
  validates :username, uniqueness: true



  def full_name
    if self.first_name && self.last_name
     self.first_name + " " + self.last_name
   end
 end

has_secure_password validations: false

end
