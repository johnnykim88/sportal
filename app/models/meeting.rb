class Meeting < ActiveRecord::Base
  attr_accessible :sport_id, :address, :end_at, :latitude, :longitude, :meetdate, :recurring, :start_at

  belongs_to :sport
  has_many :user_meetings
  has_many :users, through: :user_meetings

  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode, :reverse_geocode

  
 
 


end
