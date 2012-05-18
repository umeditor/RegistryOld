class User < ActiveRecord::Base
  attr_accessible :affiliation, :email, :name
  
  has_many :trials
end
