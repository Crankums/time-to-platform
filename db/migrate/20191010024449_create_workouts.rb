class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.integer :length
      t.datetime :start_time
      t.datetime :end_time
      t.string :type
      t.string :name
      # what else?
      t.timestamps
    end
  end
end
