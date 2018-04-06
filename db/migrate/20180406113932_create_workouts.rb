class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.string :workout_type
      t.integer :activity_time
      t.float :activity_speed
      t.integer :recover_time
      t.integer :repeats
      t.integer :total_duration
      t.boolean :current

      t.timestamps
    end
    add_index :workouts, :user_id
    add_index :workouts, :current
  end
end
