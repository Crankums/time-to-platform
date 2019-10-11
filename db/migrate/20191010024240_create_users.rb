class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      # relevant info only: save the metrics data for a later project
      t.string :name
      t.string :password_digest
      # email
      # preferred workouts
      # what else?
      t.timestamps
    end
  end
end
