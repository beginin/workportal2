class User < ActiveRecord::Base
  attr_accessible :name
  has_many :userlog
  has_many :comp, :through => :userlog
end
