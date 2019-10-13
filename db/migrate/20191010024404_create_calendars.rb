class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      # this table is for calendar *data* while the tools to render the physical calender are in the simple_calendar gem
      t.integer :appointment_id
      t.integer :workout_id
      t.integer :user_id

      # calendar attributes
      t.timestamps # necessary?
    end
  end
end
