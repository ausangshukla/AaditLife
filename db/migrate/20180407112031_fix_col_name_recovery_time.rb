class FixColNameRecoveryTime < ActiveRecord::Migration[5.1]
  def change
  	rename_column :workouts, :recover_time, :recovery_time
  end
end
