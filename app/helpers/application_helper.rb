module ApplicationHelper
  
  def days
    Date::DAYNAMES
  end

  def abbr_days
    Date::ABBR_DAYNAMES
  end
end
