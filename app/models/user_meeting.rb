class UserMeeting < ActiveRecord::Base
  attr_accessible :user_id, :meeting_id
  belongs_to :user
  belongs_to :meeting

  # def overlaps?(other)
  #   (self.start_at - other.end_at) * (other.start_at - self.end_at) >= 0
  # end
  
end
