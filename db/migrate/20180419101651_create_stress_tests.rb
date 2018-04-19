class CreateStressTests < ActiveRecord::Migration[5.1]
  def change
    create_table :stress_tests do |t|
      t.string :unexpected_upset, limit: 20
      t.string :unable_to_control, limit: 20
      t.string :nervous, limit: 20
      t.string :confident, limit: 20
      t.string :things_going_right, limit: 20
      t.string :cannot_cope, limit: 20
      t.string :control_irritation, limit: 20
      t.string :top_of_things, limit: 20
      t.string :anger, limit: 20
      t.string :difficulties_piling, limit: 20
      t.integer :user_id
      t.date :test_date
      t.integer :score
      t.string :score_interpretation, limit: 10

      t.timestamps
    end
    add_index :stress_tests, :user_id
  end
end
