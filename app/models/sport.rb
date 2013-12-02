class Sport < ActiveRecord::Base
  
attr_accessible :name,  :meetings_attributes, :user_sports_attributes, :users_attributes



  has_many :meetings
  has_many :user_sports
  has_many :users, through: :user_sports

  accepts_nested_attributes_for :user_sports

  

end
