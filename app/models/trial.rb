class Trial < ActiveRecord::Base
  attr_accessible :published, :published_datetime, :title, :user_id
  
  belongs_to :user
  
  validates :title, :length => { :maximum => 250 }
end
