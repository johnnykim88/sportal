class Meeting < ActiveRecord::Base
  attr_accessible :sport_id, :address, :end_at, :latitude, :longitude, :meetdate, :recurring, :start_at

  belongs_to :sport
  has_many :user_meetings
  has_many :users, through: :user_meetings

  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode, :reverse_geocode

  validates_presence_of :start_at, :end_at

  # validates_presence_of :start_at, :end_at
  # validates_presence_of :meetdate

  # Check if a given interval overlaps this interval    
  # def overlaps?(other)
  #   (start_at - other.end_at) * (other.start_at - end_at) >= 0
  # end

  # #Return a scope for all interval overlapping the given interval, including the given interval itself
  # scope :overlapping, lambda { |interval| {
  #   :conditions => ["(TIMEDIFF(start_at, ?) * TIMEDIFF(?, end_at)) >= 0", interval.end_at, interval.start_at]
  # }}
  
 


end
