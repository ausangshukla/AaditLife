class CreateTargets < ActiveRecord::Migration[5.1]
  def change
    create_table :targets do |t|
      t.date :start_date
      t.date :end_date
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
      t.integer :user_id

      t.timestamps
    end

    add_index :targets, :user_id
  end
end
