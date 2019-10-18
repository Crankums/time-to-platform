class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  @@days = Date::DAYNAMES
  @@abbr_days = Date::ABBR_DAYNAMES
  
  def days
    @@days
  end

  def abbr_days
    @@abbr_days
  end
  
  # args as hash for security?
  def valid_schedule?(object_datetime)
    #if date (appointment.start_time || workout.start_time) is prior to current date and time
      # message "You can only schedule #{workout || appointment} after the current time"
    # else true
  end


end
