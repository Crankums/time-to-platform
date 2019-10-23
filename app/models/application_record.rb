class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def days
    Date::DAYNAMES
  end
  # args as hash for security?
  
  def overlap_ok?
    # if overlap: true
  end

end
