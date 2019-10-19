class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :starts_time
      t.datetime :ends_time
      t.datetime :date
      t.string :days
      t.string :location      
      t.string :name
      t.string :type
      t.timestamps
    end
  end
end
