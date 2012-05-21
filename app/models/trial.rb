# == Schema Information
#
# Table name: trials
#
#  id                 :integer         not null, primary key
#  user_id            :integer
#  title              :string(255)
#  published          :boolean
#  published_datetime :datetime
#  created_at         :datetime        not null
#  updated_at         :datetime        not null
#

class Trial < ActiveRecord::Base
  attr_accessible :published, :published_datetime, :title, :user_id
  
  belongs_to :user
  
  validates :title, :length => { :maximum => 250 }
end
