class UserSport < ActiveRecord::Base
  belongs_to :user
  belongs_to :sport
  attr_accessible :user_id, :sport_id, :rating

  
  
end
