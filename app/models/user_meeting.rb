class UserMeeting < ActiveRecord::Base
  attr_accessible :user_id, :meeting_id
  belongs_to :user
  belongs_to :meeting

  # validates "meeting.starts_at" , "current_user.meeting.ends_at", :overlap => true
  # validates "current_user.meeting.starts_at" , "meeting.ends_at", :overlap => true
end
