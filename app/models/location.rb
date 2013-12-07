class Location < ActiveRecord::Base
  attr_accessible :address, :city, :country, :district, :lat, :lng, :location_name, :phone_number, :postcode, :streetnumber

  has_many :meeting_locations
  has_many :meetings, through: :meeting_locations
end
