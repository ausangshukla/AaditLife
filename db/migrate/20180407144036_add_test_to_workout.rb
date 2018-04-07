class AddTestToWorkout < ActiveRecord::Migration[5.1]
  def change
  	add_column :workouts, :fitness_test_id, :integer
  	add_index :workouts, :fitness_test_id
  end
end
