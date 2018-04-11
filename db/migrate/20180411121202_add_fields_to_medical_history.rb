class AddFieldsToMedicalHistory < ActiveRecord::Migration[5.1]
  def change
    add_column :medical_histories, :last_medical_checkup, :string
    add_column :medical_histories, :q1, :boolean
    add_column :medical_histories, :q2, :boolean
    add_column :medical_histories, :q3, :boolean
    add_column :medical_histories, :q4, :boolean
    add_column :medical_histories, :q5, :boolean
    add_column :medical_histories, :q6, :boolean
    add_column :medical_histories, :q7, :boolean
    add_column :medical_histories, :q8, :boolean
    add_column :medical_histories, :q9, :boolean
    add_column :medical_histories, :q10, :boolean
    add_column :medical_histories, :q11, :boolean
    add_column :medical_histories, :specific_issue, :text
    remove_column :medical_histories, :name
    remove_column :medical_histories, :value_type
    remove_column :medical_histories, :value
  end
end
