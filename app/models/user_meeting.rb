class UserMeeting < ActiveRecord::Base
  belongs_to :user
  belongs_to :meeting
  # attr_accessible :title, :body
end
