class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def days
    Date::DAYNAMES
  end
  # args as hash for security?
  def valid_schedule?(appt, wout)
    if appt.start_time > wout.end_time || if appt.end_time < wout.start_time
      puts "valid"
    else
      puts "time invalid"
  end


  
  def overlap_ok?
    # if overlap: true
  end

end
