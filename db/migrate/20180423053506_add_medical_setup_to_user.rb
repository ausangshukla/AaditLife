class AddMedicalSetupToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :medical_setup, :boolean
  end
end
