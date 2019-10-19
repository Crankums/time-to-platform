class CreateCalendarWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :calendar_workouts do |t|
      t.integer :calendar_id
      t.integer :workout_id
      t.integer :user_id
      t.timestamps
    end
  end
end
