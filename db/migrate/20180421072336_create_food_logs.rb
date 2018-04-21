class CreateFoodLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :food_logs do |t|
      t.integer :user_id
      t.string :meal, limit: 15
      t.datetime :intake_date
      t.text :details

      t.timestamps
    end
    add_index :food_logs, :user_id
  end
end
