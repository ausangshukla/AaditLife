class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :gender, :birth_year, :height, :phone, 
  :company_id, :accept_terms, :role
end
