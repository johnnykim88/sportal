class Meeting < ActiveRecord::Base
  attr_accessible :sport_id, :address, :end_at, :latitude, :longitude, :meetdate, :recurring, :start_at

  belongs_to :sport
  has_many :user_meetings
  has_many :users, through: :user_meetings
end
