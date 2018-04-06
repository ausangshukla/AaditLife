class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :gender, :limit => 1
      t.integer :birth_year

      t.timestamps
    end
  end
end
