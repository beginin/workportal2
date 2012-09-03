class Comp < ActiveRecord::Base
  attr_accessible :name , :sortuserlog
  has_many :userlog
  has_many :user, :through => :userlog
  
  def sortuserlog
    self.userlog.find(:all, :order => "created_at DESC", :limit => 30)
  end
end
