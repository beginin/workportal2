class User < ActiveRecord::Base
  attr_accessible :name
  has_many :userlog
  has_many :comp, :through => :userlog

  def sortuserlog
    self.userlog.find(:all, :order => "created_at DESC", :limit => "30")
  end
end
