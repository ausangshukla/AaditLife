class AddTypeToSchedule < ActiveRecord::Migration[5.1]
  def change
    add_column :schedules, :workout_type, :string
  end
end
