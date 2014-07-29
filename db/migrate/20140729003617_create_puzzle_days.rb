class CreatePuzzleDays < ActiveRecord::Migration
  def change
    create_table :puzzle_days do |t|
      t.date :day
      t.integer :puzzle_id

      t.timestamps
    end
  end
end
