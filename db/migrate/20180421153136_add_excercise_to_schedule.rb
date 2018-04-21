class AddExcerciseToSchedule < ActiveRecord::Migration[5.1]
  def change
    add_column :schedules, :excercise_type, :string, limit: 15
    add_column :schedules, :excercise_id, :integer
    remove_column :schedules, :workout_id
  end
end
