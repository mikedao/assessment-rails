class List < ActiveRecord::Base
  before_create :set_active
  has_many :tasks

  def set_active
    if self.active.nil?
      self.active = true
    end
  end
end
