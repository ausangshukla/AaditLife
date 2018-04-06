class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.integer :allowed_signup_count

      t.timestamps
    end
  end
end
