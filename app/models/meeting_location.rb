class MeetingLocation < ActiveRecord::Base
  attr_accessible :meeting_id, :location_id
  belongs_to :meeting
  belongs_to :location
  
end
