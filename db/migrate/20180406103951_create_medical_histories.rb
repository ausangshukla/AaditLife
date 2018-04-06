class CreateMedicalHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :medical_histories do |t|
      t.integer :user_id
      t.string :name
      t.string :value_type
      t.text :value

      t.timestamps
    end
  end
end
