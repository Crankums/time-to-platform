class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.integer :duration
      t.datetime :start_time
      t.datetime :end_time
      t.string :workout_type
      t.integer :user_id
      t.timestamps
    end
  end
end
