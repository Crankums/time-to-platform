class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def days
    Date::DAYNAMES
  end
  # args as hash for security?
  def valid_schedule?(object_datetime)
    #if date (appointment.start_time || workout.start_time) is prior to current date and time
      # message "You can only schedule #{workout || appointment} after the current time"
    # else true
  end

  
  def overlap_ok?
    # if overlap: true
  end

end
