# == Schema Information
#
# Table name: users
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  email       :string(255)
#  affiliation :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class User < ActiveRecord::Base
  attr_accessible :affiliation, :email, :name
  
  has_many :trials
end
