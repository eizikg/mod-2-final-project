class Feedback < ApplicationRecord
  belongs_to :user
  belongs_to :colleague, :class_name => "user"
end
