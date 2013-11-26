class Sport < ActiveRecord::Base
  attr_accessible :name, :rating, :meetings_attributes, :user_sports_attributes, :users_attributes


  has_many :meetings
  has_many :user_sports
  has_many :users, through: :user_sports

  accepts_nested_attributes_for :user_sports

  
  # def self.equal_to(name)
  # 	where("sports.name = ?", name)
  # end

  # scope :match, equal_to(name)


end
