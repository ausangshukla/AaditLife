class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :gender, :birth_year, :phone, 
  :company_id, :accept_terms, :role, :goals_setup, :medical_setup, :initial_test_completed
end
