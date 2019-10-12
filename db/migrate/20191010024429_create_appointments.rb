class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :location      
      t.string :name
      t.string :type
      t.timestamps
    end
  end
end
