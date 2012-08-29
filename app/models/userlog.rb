class Userlog < ActiveRecord::Base
  attr_accessible :comp_id, :in, :user_id , :user_name, :comp_name, :created_at
  belongs_to :comp
  belongs_to :user

  
 def comp_name
    comp.try(:name)
  end

  def comp_name=(name)
    self.comp = Comp.find_or_create_by_name(name) if name.present?
  end

  def user_name
    user.try(:name)
  end

  def user_name=(name)
    self.user = User.find_or_create_by_name(name) if name.present?
  end

  
end
