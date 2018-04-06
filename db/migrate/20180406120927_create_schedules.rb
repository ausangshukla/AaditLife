class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.integer :user_id
      t.integer :workout_id
      t.date :scheduled_date
      t.integer :completion_percentage
      t.integer :rating
      t.text :comments

      t.timestamps
    end
    add_index :schedules, :user_id
    add_index :schedules, :workout_id
    add_index :schedules, :scheduled_date
  end
end
