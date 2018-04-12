class AddFitnessTestIdToSchedule < ActiveRecord::Migration[5.1]
  def change
    add_column :schedules, :fitness_test_id, :integer
    add_index :schedules, :fitness_test_id
  end
end
