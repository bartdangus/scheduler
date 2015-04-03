class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :start_time
      t.integer :end_time
      t.date :day
      t.integer :track_id

      t.timestamps null: false
    end
  end
end
