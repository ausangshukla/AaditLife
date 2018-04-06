class CreateFitnessTests < ActiveRecord::Migration[5.1]
  def change
    create_table :fitness_tests do |t|
      t.date :test_date
      t.float :weight
      t.float :fat_percentage
      t.integer :body_age
      t.float :bmi
      t.float :rm
      t.float :visc_fat
      t.float :sc_fat
      t.float :muscle_percentage
      t.float :fat_kg
      t.float :muscle_kg
      t.float :other_kg
      t.float :fat_loss
      t.float :muscle_gain
      t.float :max_speed
      t.float :duration
      t.string :reason_for_stopping
      t.text :test_details
      t.integer :user_id
      t.integer :coach_id
      t.integer :max_heart_rate

      t.timestamps
    end
  end
end
