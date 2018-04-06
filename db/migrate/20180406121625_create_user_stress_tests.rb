class CreateUserStressTests < ActiveRecord::Migration[5.1]
  def change
    create_table :user_stress_tests do |t|
      t.integer :test_id
      t.integer :stress_test_id
      t.integer :user_id
      t.date :test_date
      t.integer :score

      t.timestamps
    end
    add_index :user_stress_tests, :test_id
    add_index :user_stress_tests, :stress_test_id
    add_index :user_stress_tests, :user_id
  end
end
