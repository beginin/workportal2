class Comp < ActiveRecord::Base
  attr_accessible :name
  has_many :userlog
  has_many :user, :through => :userlog
end
