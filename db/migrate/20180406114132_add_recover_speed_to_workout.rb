class AddRecoverSpeedToWorkout < ActiveRecord::Migration[5.1]
  def change
    add_column :workouts, :recovery_speed, :float
  end
end
