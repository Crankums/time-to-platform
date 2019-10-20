class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.integer :duration
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :workout_type
      t.integer :user_id
      t.timestamps
    end
  end
end
