class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      # start_time
      # end_time
      # location
      # name, type
      t.timestamps
    end
  end
end
