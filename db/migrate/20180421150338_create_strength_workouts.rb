class CreateStrengthWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :strength_workouts do |t|
      t.integer :balance
      t.integer :plank
      t.integer :pushups
      t.integer :one_leg_raise
      t.integer :leg_raise_both
      t.integer :squats
      t.integer :crunches
      t.integer :superman
      t.boolean :is_target
      t.boolean :current
      t.integer :user_id

      t.timestamps
    end
    add_index :strength_workouts, :current
    add_index :strength_workouts, :user_id
  end
end
