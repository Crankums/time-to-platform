class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      # length
      # start_time
      # end_time
      # type, name, ??
      t.timestamps
    end
  end
end
