class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      # relevant info only: save the metrics data for a later project
      # name
      # email
      # password
      # preferred workouts
      # what else?
      t.timestamps
    end
  end
end
