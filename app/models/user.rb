class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me, :photo, :zip, :latitude, :longitude, :sports_attributes
  # attr_accessible :title, :body

  has_many :user_sports
  has_many :user_meetings
  has_many :sports, through: :user_sports
  has_many :meetings, through: :user_meetings
  
  geocoded_by :zip
  
  after_validation :geocode

  has_attached_file :photo, 
  					:default_url => '/assets/images/avatar/default.JPG',
            :styles => { :export => {:geometry => "50x550#", :quality => 100, :format => 'JPG'} },
  					:convert_options => { :all => "-quality 100" },
  					:processor => "mini_magick",
  					:url  => "/assets/images/avatar/:basename.:extension",
  					:path => ":rails_root/public/assets/images/avatar/:basename.:extension"

scope :all_except_current, ->(user) { where.not(id: user.id) }
  


end
