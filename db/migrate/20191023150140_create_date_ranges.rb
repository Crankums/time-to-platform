class CreateDateRanges < ActiveRecord::Migration[6.0]
  def change
    create_table :date_ranges do |t|

      t.timestamps
    end
  end
end
