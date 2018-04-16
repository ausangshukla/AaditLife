class CreateCardioProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :cardio_profiles do |t|
      t.integer :fitness_test_id
      t.integer :user_id
      t.date :on_date
      t.float :speed
      t.integer :bpm

      t.timestamps
    end
    add_index :cardio_profiles, :fitness_test_id
    add_index :cardio_profiles, :user_id
  end
end
