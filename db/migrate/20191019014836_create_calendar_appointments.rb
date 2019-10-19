class CreateCalendarAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :calendar_appointments do |t|
      t.integer :calendar_id
      t.integer :appointment_id
      t.integer :user_id
      t.timestamps
    end
  end
end
