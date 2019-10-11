class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      # look up how to create a rails calendar, whether it requires a gem or build one through methods
      # appointment_id
      # workout_id
      # user_id
      # calendar attributes
      t.timestamps # necessary?
    end
  end
end
