class RenameExerciseInSChedule < ActiveRecord::Migration[5.1]
  def change
    rename_column :schedules, :excercise_id, :exercise_id
    rename_column :schedules, :excercise_type, :exercise_type
  end
end
