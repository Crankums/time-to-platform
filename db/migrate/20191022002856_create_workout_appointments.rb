class CreateWorkoutAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_appointments do |t|
      t.integer :workout_id
      t.integer :appointment_id
      t.timestamps
    end
  end
end
