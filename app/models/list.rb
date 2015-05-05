class List < ActiveRecord::Base
  before_create :set_active
  has_many :tasks

  def set_active
    self.active = true
  end
end
