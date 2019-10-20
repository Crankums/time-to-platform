class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.datetime :date
      t.string :day
      t.string :location      
      t.string :name
      t.string :appt_type
      t.integer :user_id
      t.timestamps
    end
  end
end
