class Comp < ActiveRecord::Base
  attr_accessible :name
  has_many :userlog
end
