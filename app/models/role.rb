class Role < ActiveRecord::Base
  has_many :auditions
  
  def actors
    self.auditions.map(&:actor)
  end
  def locations
    self.auditions.map(&:location)
  end
  def lead
    return self.auditions.first if self.auditions.size
    'no actor has been hired for this role'
  end
  def understudy
    return self.auditions.second if self.auditions.size > 1
    'no actor has been hired for understudy for this role'
  end
end