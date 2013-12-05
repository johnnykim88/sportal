class Location < ActiveRecord::Base
  attr_accessible :address, :city, :state, :country, :district, :lat, :lng, :location_name, :phone_number, :postcode
  belongs_to :meeting
  
end
