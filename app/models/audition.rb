class Audition < ActiveRecord::Base
  belongs_to :role

    def call_back
      self.update_attribute(:hired, true)
    end
end